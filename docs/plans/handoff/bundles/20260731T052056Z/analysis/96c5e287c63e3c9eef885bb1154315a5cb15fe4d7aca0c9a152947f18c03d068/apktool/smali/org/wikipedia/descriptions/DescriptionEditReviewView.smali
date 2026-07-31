.class public final Lorg/wikipedia/descriptions/DescriptionEditReviewView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/wikipedia/descriptions/DescriptionEditReviewView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;",
        "callback",
        "",
        "setLoginCallback",
        "(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V",
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
.field public final binding:Landroidx/compose/ui/node/NodeChain;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const p2, 0x7f0c05c2

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    const p1, 0x7f090071

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    move-object v2, p2

    .line 25
    check-cast v2, Landroid/widget/ScrollView;

    .line 26
    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const p1, 0x7f090077

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    move-object v3, p2

    .line 37
    check-cast v3, Landroid/widget/TextView;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    const p1, 0x7f090078

    .line 42
    .line 43
    .line 44
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    move-object v4, p2

    .line 49
    check-cast v4, Lorg/wikipedia/views/FaceAndColorDetectImageView;

    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    const p1, 0x7f09007c

    .line 54
    .line 55
    .line 56
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    move-object v5, p2

    .line 61
    check-cast v5, Lorg/wikipedia/views/GoneIfEmptyTextView;

    .line 62
    .line 63
    if-eqz v5, :cond_0

    .line 64
    .line 65
    const p1, 0x7f090080

    .line 66
    .line 67
    .line 68
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    move-object v6, p2

    .line 73
    check-cast v6, Landroid/widget/TextView;

    .line 74
    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    const p1, 0x7f09027e

    .line 78
    .line 79
    .line 80
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    move-object v7, p2

    .line 85
    check-cast v7, Landroid/widget/FrameLayout;

    .line 86
    .line 87
    if-eqz v7, :cond_0

    .line 88
    .line 89
    const p1, 0x7f09027f

    .line 90
    .line 91
    .line 92
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    move-object v8, p2

    .line 97
    check-cast v8, Lorg/wikipedia/views/AppTextView;

    .line 98
    .line 99
    if-eqz v8, :cond_0

    .line 100
    .line 101
    const p1, 0x7f090280

    .line 102
    .line 103
    .line 104
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    move-object v9, p2

    .line 109
    check-cast v9, Landroid/widget/ImageView;

    .line 110
    .line 111
    if-eqz v9, :cond_0

    .line 112
    .line 113
    const p1, 0x7f0902e7

    .line 114
    .line 115
    .line 116
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v10

    .line 120
    if-eqz v10, :cond_0

    .line 121
    .line 122
    const p1, 0x7f09032a

    .line 123
    .line 124
    .line 125
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    check-cast p2, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    if-eqz p2, :cond_0

    .line 132
    .line 133
    const p1, 0x7f09032c

    .line 134
    .line 135
    .line 136
    invoke-static {p0, p1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    move-object v11, p2

    .line 141
    check-cast v11, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;

    .line 142
    .line 143
    if-eqz v11, :cond_0

    .line 144
    .line 145
    new-instance v0, Landroidx/compose/ui/node/NodeChain;

    .line 146
    .line 147
    const/4 v12, 0x6

    .line 148
    move-object v1, p0

    .line 149
    invoke-direct/range {v0 .. v12}, Landroidx/compose/ui/node/NodeChain;-><init>(Landroid/view/ViewGroup;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;I)V

    .line 150
    .line 151
    .line 152
    iput-object v0, v1, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 153
    .line 154
    return-void

    .line 155
    :cond_0
    move-object v1, p0

    .line 156
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    const-string p1, "Missing required view with ID: "

    .line 165
    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const/4 p0, 0x0

    .line 174
    throw p0
.end method


# virtual methods
.method public final setLoginCallback(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditReviewView;->binding:Landroidx/compose/ui/node/NodeChain;

    .line 5
    .line 6
    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->cachedDiffer:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lorg/wikipedia/descriptions/DescriptionEditLicenseView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditLicenseView$Callback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
