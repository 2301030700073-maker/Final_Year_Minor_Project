.class public final Lorg/wikipedia/edit/preview/EditPreviewFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;
.implements Lorg/wikipedia/page/references/ReferenceDialog$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0006\u0007B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/wikipedia/edit/preview/EditPreviewFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;",
        "Lorg/wikipedia/page/references/ReferenceDialog$Callback;",
        "<init>",
        "()V",
        "Callback",
        "EditLinkHandler",
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
.field public _binding:Lokio/internal/DefaultSocket;

.field public bridge:Lorg/wikipedia/bridge/CommunicationBridge;

.field public final isPreview:Z

.field public linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

.field public final model:Lorg/wikipedia/page/PageViewModel;

.field public references:Lorg/wikipedia/page/references/PageReferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/wikipedia/page/PageViewModel;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isPreview:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final callback()Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-class v2, Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;

    .line 7
    .line 8
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getTargetFragment(Z)Landroidx/fragment/app/Fragment;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 37
    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireParentFragment()Landroidx/fragment/app/Fragment;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const/4 p0, 0x0

    .line 67
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    check-cast p0, Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;

    .line 71
    .line 72
    return-object p0
.end method

.method public final getLinkHandler()Lorg/wikipedia/page/LinkHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    const-string p0, "linkHandler"

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    throw p0
.end method

.method public final getMessageCardHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getModel()Lorg/wikipedia/page/PageViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getReferencesGroup()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lorg/wikipedia/page/references/PageReferences;->referencesGroup:Ljava/util/List;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "references"

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public final getSelectedReferenceIndex()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->references:Lorg/wikipedia/page/references/PageReferences;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    iget p0, p0, Lorg/wikipedia/page/references/PageReferences;->selectedIndex:I

    .line 6
    .line 7
    return p0

    .line 8
    :cond_0
    const-string p0, "references"

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    throw p0
.end method

.method public final getToolbarMargin()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getWebView()Lorg/wikipedia/views/ObservableWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/views/ObservableWebView;

    .line 9
    .line 10
    return-object p0
.end method

.method public final hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final isActive()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/FrameLayout;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final isPreview()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->isPreview:Z

    .line 2
    .line 3
    return p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const p3, 0x7f0c01a3

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    move-object v2, p1

    .line 17
    check-cast v2, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    const p2, 0x7f090204

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    move-object v4, p3

    .line 27
    check-cast v4, Lorg/wikipedia/views/ObservableWebView;

    .line 28
    .line 29
    const/4 p3, 0x0

    .line 30
    if-eqz v4, :cond_8

    .line 31
    .line 32
    const p2, 0x7f09032b

    .line 33
    .line 34
    .line 35
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    move-object v5, v1

    .line 40
    check-cast v5, Landroid/widget/TextView;

    .line 41
    .line 42
    if-eqz v5, :cond_8

    .line 43
    .line 44
    new-instance v1, Lokio/internal/DefaultSocket;

    .line 45
    .line 46
    const/16 v6, 0x10

    .line 47
    .line 48
    move-object v3, v2

    .line 49
    invoke-direct/range {v1 .. v6}, Lokio/internal/DefaultSocket;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 50
    .line 51
    .line 52
    iput-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 53
    .line 54
    new-instance p1, Lorg/wikipedia/bridge/CommunicationBridge;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lorg/wikipedia/bridge/CommunicationBridge;-><init>(Lorg/wikipedia/bridge/CommunicationBridge$CommunicationBridgeListener;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 60
    .line 61
    invoke-virtual {p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->callback()Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;->getParentPageTitle()Lorg/wikipedia/page/PageTitle;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p2, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 70
    .line 71
    iput-object p1, p2, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    .line 72
    .line 73
    new-instance v1, Lorg/wikipedia/history/HistoryEntry;

    .line 74
    .line 75
    const/4 v2, 0x2

    .line 76
    invoke-direct {v1, v2, p1}, Lorg/wikipedia/history/HistoryEntry;-><init>(ILorg/wikipedia/page/PageTitle;)V

    .line 77
    .line 78
    .line 79
    iput-object v1, p2, Lorg/wikipedia/page/PageViewModel;->curEntry:Ljava/lang/Object;

    .line 80
    .line 81
    new-instance p1, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    invoke-direct {p1, p0, p2}, Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    iput-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->linkHandler:Lorg/wikipedia/edit/preview/EditPreviewFragment$EditLinkHandler;

    .line 91
    .line 92
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast p1, Lorg/wikipedia/views/ObservableWebView;

    .line 100
    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    new-instance v1, Landroid/util/TypedValue;

    .line 106
    .line 107
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const v3, 0x7f0404e7

    .line 115
    .line 116
    .line 117
    const/4 v4, 0x1

    .line 118
    invoke-virtual {p2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    if-eqz p2, :cond_0

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_0
    move-object v1, p3

    .line 126
    :goto_0
    if-eqz v1, :cond_7

    .line 127
    .line 128
    iget p2, v1, Landroid/util/TypedValue;->data:I

    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object p1, p1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast p1, Lorg/wikipedia/views/ObservableWebView;

    .line 141
    .line 142
    new-instance p2, Lorg/wikipedia/edit/preview/EditPreviewFragment$initWebView$1;

    .line 143
    .line 144
    invoke-direct {p2, p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$initWebView$1;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 151
    .line 152
    const-string p2, "bridge"

    .line 153
    .line 154
    if-eqz p1, :cond_6

    .line 155
    .line 156
    new-instance v1, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;

    .line 157
    .line 158
    invoke-direct {v1, v4}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;-><init>(I)V

    .line 159
    .line 160
    .line 161
    const-string v3, "setup"

    .line 162
    .line 163
    invoke-virtual {p1, v3, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 167
    .line 168
    if-eqz p1, :cond_5

    .line 169
    .line 170
    new-instance v1, Lorg/wikipedia/edit/preview/EditPreviewFragment$$ExternalSyntheticLambda1;

    .line 171
    .line 172
    invoke-direct {v1, p0, v0}, Lorg/wikipedia/edit/preview/EditPreviewFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;I)V

    .line 173
    .line 174
    .line 175
    const-string v0, "final_setup"

    .line 176
    .line 177
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 181
    .line 182
    if-eqz p1, :cond_4

    .line 183
    .line 184
    const-string v0, "link"

    .line 185
    .line 186
    invoke-virtual {p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v0, v1}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 194
    .line 195
    if-eqz p1, :cond_3

    .line 196
    .line 197
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;

    .line 198
    .line 199
    invoke-direct {v0, v2}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;-><init>(I)V

    .line 200
    .line 201
    .line 202
    const-string v1, "image"

    .line 203
    .line 204
    invoke-virtual {p1, v1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 205
    .line 206
    .line 207
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 208
    .line 209
    if-eqz p1, :cond_2

    .line 210
    .line 211
    new-instance v0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;

    .line 212
    .line 213
    const/4 v1, 0x3

    .line 214
    invoke-direct {v0, v1}, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda18;-><init>(I)V

    .line 215
    .line 216
    .line 217
    const-string v1, "media"

    .line 218
    .line 219
    invoke-virtual {p1, v1, v0}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 220
    .line 221
    .line 222
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 223
    .line 224
    if-eqz p1, :cond_1

    .line 225
    .line 226
    new-instance p2, Lorg/wikipedia/edit/preview/EditPreviewFragment$$ExternalSyntheticLambda1;

    .line 227
    .line 228
    invoke-direct {p2, p0, v4}, Lorg/wikipedia/edit/preview/EditPreviewFragment$$ExternalSyntheticLambda1;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;I)V

    .line 229
    .line 230
    .line 231
    const-string p3, "reference"

    .line 232
    .line 233
    invoke-virtual {p1, p3, p2}, Lorg/wikipedia/bridge/CommunicationBridge;->addListener(Ljava/lang/String;Lorg/wikipedia/bridge/CommunicationBridge$JSEventListener;)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 242
    .line 243
    check-cast p1, Landroid/widget/FrameLayout;

    .line 244
    .line 245
    const/16 p2, 0x8

    .line 246
    .line 247
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .line 249
    .line 250
    iget-object p0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 251
    .line 252
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    .line 254
    .line 255
    iget-object p0, p0, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 256
    .line 257
    check-cast p0, Landroid/widget/FrameLayout;

    .line 258
    .line 259
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    .line 261
    .line 262
    return-object p0

    .line 263
    :cond_1
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    throw p3

    .line 267
    :cond_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p3

    .line 271
    :cond_3
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p3

    .line 275
    :cond_4
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    throw p3

    .line 279
    :cond_5
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p3

    .line 283
    :cond_6
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p3

    .line 287
    :cond_7
    const-string p0, "Attribute not found; ID=2130969831"

    .line 288
    .line 289
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    return-object p3

    .line 293
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object p0

    .line 301
    const-string p1, "Missing required view with ID: "

    .line 302
    .line 303
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p0

    .line 307
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return-object p3
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/wikipedia/views/ObservableWebView;->clearAllListeners()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lorg/wikipedia/views/ObservableWebView;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    check-cast v0, Landroid/view/ViewGroup;

    .line 30
    .line 31
    iget-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v1, v1, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Lorg/wikipedia/views/ObservableWebView;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lorg/wikipedia/bridge/CommunicationBridge;->cleanup()V

    .line 49
    .line 50
    .line 51
    iput-object v1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    const-string p0, "bridge"

    .line 58
    .line 59
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v1
.end method

.method public final showPreview(Ljava/lang/String;)V
    .locals 7

    .line 95
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    iget-object v0, v0, Lokio/internal/DefaultSocket;->source:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lorg/wikipedia/views/ObservableWebView;

    sget-object v0, Lorg/wikipedia/dataclient/ServiceFactory;->INSTANCE:Lorg/wikipedia/dataclient/ServiceFactory;

    .line 97
    iget-object v0, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->model:Lorg/wikipedia/page/PageViewModel;

    .line 98
    iget-object v0, v0, Lorg/wikipedia/page/PageViewModel;->title:Ljava/lang/Object;

    check-cast v0, Lorg/wikipedia/page/PageTitle;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    iget-object v0, v0, Lorg/wikipedia/page/PageTitle;->wikiSite:Lorg/wikipedia/dataclient/WikiSite;

    .line 101
    invoke-static {v0}, Lorg/wikipedia/dataclient/ServiceFactory;->getRestBasePath(Lorg/wikipedia/dataclient/WikiSite;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    move-object v3, p1

    const-string v5, "UTF-8"

    const/4 v6, 0x0

    const-string v4, "text/html"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lorg/wikipedia/edit/preview/EditPreviewFragment;->_binding:Lokio/internal/DefaultSocket;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    iget-object p1, p1, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method public final showPreview(Lorg/wikipedia/page/PageTitle;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroidx/paging/HintHandler;

    .line 23
    .line 24
    invoke-direct {v2, v1}, Landroidx/paging/HintHandler;-><init>(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v3, 0x23

    .line 30
    .line 31
    if-lt v1, v3, :cond_0

    .line 32
    .line 33
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl35;

    .line 34
    .line 35
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/16 v3, 0x1e

    .line 40
    .line 41
    if-lt v1, v3, :cond_1

    .line 42
    .line 43
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;

    .line 44
    .line 45
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl30;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/16 v3, 0x1a

    .line 50
    .line 51
    if-lt v1, v3, :cond_2

    .line 52
    .line 53
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl26;

    .line 54
    .line 55
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;

    .line 60
    .line 61
    invoke-direct {v1, v0, v2}, Landroidx/core/view/WindowInsetsControllerCompat$Impl23;-><init>(Landroid/view/Window;Landroidx/paging/HintHandler;)V

    .line 62
    .line 63
    .line 64
    :goto_0
    invoke-virtual {v1}, Lcoil3/util/UtilsKt;->hide()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lorg/wikipedia/edit/preview/EditPreviewFragment;->callback()Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-interface {v0, v1}, Lorg/wikipedia/edit/preview/EditPreviewFragment$Callback;->showProgressBar$1(Z)V

    .line 73
    .line 74
    .line 75
    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v1, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lorg/wikipedia/login/LoginClient$login$$inlined$CoroutineExceptionHandler$1;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;)V

    .line 82
    .line 83
    .line 84
    new-instance v2, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;

    .line 85
    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-direct {v2, p0, p1, p2, v3}, Lorg/wikipedia/edit/preview/EditPreviewFragment$showPreview$2;-><init>(Lorg/wikipedia/edit/preview/EditPreviewFragment;Lorg/wikipedia/page/PageTitle;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 88
    .line 89
    .line 90
    const/4 p0, 0x2

    .line 91
    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 92
    .line 93
    .line 94
    return-void
.end method
