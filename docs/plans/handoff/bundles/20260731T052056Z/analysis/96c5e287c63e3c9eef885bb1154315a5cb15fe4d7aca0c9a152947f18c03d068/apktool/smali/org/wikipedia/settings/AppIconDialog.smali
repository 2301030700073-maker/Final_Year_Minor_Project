.class public final Lorg/wikipedia/settings/AppIconDialog;
.super Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/settings/AppIconDialog;",
        "Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;",
        "<init>",
        "()V",
        "AppIconAdapter",
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
.field public _binding:Lretrofit2/OkHttpCall$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lorg/wikipedia/page/ExtendedBottomSheetDialogFragment;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c0174

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f090068

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    const p2, 0x7f09006c

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    const p2, 0x7f09006d

    .line 35
    .line 36
    .line 37
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Landroid/widget/TextView;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    new-instance p2, Lretrofit2/OkHttpCall$1;

    .line 46
    .line 47
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    const/4 v1, 0x3

    .line 50
    invoke-direct {p2, v1, p1, p3}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lorg/wikipedia/settings/AppIconDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 54
    .line 55
    new-instance p1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexDirection(I)V

    .line 65
    .line 66
    .line 67
    iget p2, p1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    if-eq p2, v0, :cond_0

    .line 71
    .line 72
    iput v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager;->mJustifyContent:I

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->requestLayout()V

    .line 75
    .line 76
    .line 77
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lorg/wikipedia/settings/AppIconDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    iget-object p1, p1, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 91
    .line 92
    new-instance p2, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;

    .line 93
    .line 94
    invoke-static {}, Lorg/wikipedia/settings/LauncherIcon;->getEntries()Lkotlin/enums/EnumEntries;

    .line 95
    .line 96
    .line 97
    move-result-object p3

    .line 98
    invoke-direct {p2, p3}, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;-><init>(Lkotlin/enums/EnumEntries;)V

    .line 99
    .line 100
    .line 101
    new-instance p3, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;

    .line 102
    .line 103
    const/16 v0, 0x16

    .line 104
    .line 105
    invoke-direct {p3, v0, p0}, Lorg/wikipedia/main/MainActivity$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iput-object p3, p2, Lorg/wikipedia/settings/AppIconDialog$AppIconAdapter;->onItemClickListener:Ljava/lang/Object;

    .line 109
    .line 110
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 111
    .line 112
    .line 113
    iget-object p0, p0, Lorg/wikipedia/settings/AppIconDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 114
    .line 115
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

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
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/settings/AppIconDialog;->_binding:Lretrofit2/OkHttpCall$1;

    .line 6
    .line 7
    return-void
.end method
