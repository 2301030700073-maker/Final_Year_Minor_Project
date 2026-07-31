.class public final Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;
.super Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;",
        "Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;",
        "<init>",
        "()V",
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
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const v1, 0x7f0c01b2

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const/4 p2, 0x0

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    check-cast p1, Landroid/widget/FrameLayout;

    .line 22
    .line 23
    new-instance v1, Lretrofit2/OkHttpCall$1;

    .line 24
    .line 25
    const/16 v3, 0x8

    .line 26
    .line 27
    invoke-direct {v1, v3, p1, p1}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 31
    .line 32
    sget-object p1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 33
    .line 34
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    .line 48
    .line 49
    invoke-direct {v1, p3}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    iget-object p3, p3, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p3, Landroid/widget/FrameLayout;

    .line 60
    .line 61
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    .line 62
    .line 63
    .line 64
    move-result p3

    .line 65
    new-instance v3, Lorg/wikipedia/page/PageTitle;

    .line 66
    .line 67
    sget-object v4, Lorg/wikipedia/dataclient/WikiSite;->Companion:Lorg/wikipedia/dataclient/WikiSite$Companion;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Lorg/wikipedia/dataclient/WikiSite$Companion;->forLanguageCode(Ljava/lang/String;)Lorg/wikipedia/dataclient/WikiSite;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string v4, ""

    .line 77
    .line 78
    invoke-direct {v3, v4, p1, p2}, Lorg/wikipedia/page/PageTitle;-><init>(Ljava/lang/String;Lorg/wikipedia/dataclient/WikiSite;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object p1, Lorg/wikipedia/Constants$InvokeSource;->SUGGESTED_EDITS_RECENT_EDITS:Lorg/wikipedia/Constants$InvokeSource;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    new-instance v4, Lorg/wikipedia/diff/ArticleEditDetailsFragment;

    .line 87
    .line 88
    invoke-direct {v4}, Lorg/wikipedia/diff/ArticleEditDetailsFragment;-><init>()V

    .line 89
    .line 90
    .line 91
    new-instance v5, Lkotlin/Pair;

    .line 92
    .line 93
    const-string v6, "articleTitle"

    .line 94
    .line 95
    invoke-direct {v5, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/4 v3, -0x1

    .line 99
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    new-instance v6, Lkotlin/Pair;

    .line 104
    .line 105
    const-string v7, "pageId"

    .line 106
    .line 107
    invoke-direct {v6, v7, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    new-instance v3, Lkotlin/Pair;

    .line 111
    .line 112
    const-string v7, "revisionFrom"

    .line 113
    .line 114
    invoke-direct {v3, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    new-instance v7, Lkotlin/Pair;

    .line 118
    .line 119
    const-string v8, "revisionTo"

    .line 120
    .line 121
    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lkotlin/Pair;

    .line 125
    .line 126
    const-string v8, "invokeSource"

    .line 127
    .line 128
    invoke-direct {v0, v8, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    const/4 p1, 0x5

    .line 132
    new-array p1, p1, [Lkotlin/Pair;

    .line 133
    .line 134
    aput-object v5, p1, v2

    .line 135
    .line 136
    const/4 v2, 0x1

    .line 137
    aput-object v6, p1, v2

    .line 138
    .line 139
    const/4 v5, 0x2

    .line 140
    aput-object v3, p1, v5

    .line 141
    .line 142
    const/4 v3, 0x3

    .line 143
    aput-object v7, p1, v3

    .line 144
    .line 145
    const/4 v3, 0x4

    .line 146
    aput-object v0, p1, v3

    .line 147
    .line 148
    invoke-static {p1}, Lkotlin/text/UStringsKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v4, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, p3, v4, p2, v2}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 159
    .line 160
    .line 161
    :cond_0
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 162
    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast p0, Landroid/widget/FrameLayout;

    .line 169
    .line 170
    return-object p0

    .line 171
    :cond_1
    const-string p0, "rootView"

    .line 172
    .line 173
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object p2
.end method

.method public final onDestroyView()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsVandalismPatrolFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 6
    .line 7
    return-void
.end method

.method public final publish()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsItemFragment;->parent()Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->nextPage(Landroidx/fragment/app/Fragment;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
