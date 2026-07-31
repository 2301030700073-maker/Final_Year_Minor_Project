.class public abstract Lorg/wikipedia/onboarding/OnboardingFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/BackPressedHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0003\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/wikipedia/onboarding/OnboardingFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/BackPressedHandler;",
        "Callback",
        "PageChangeCallback",
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
.field public _binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

.field public final enableSkip:Z

.field public final forwardClickListener:Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;

.field public final pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/wikipedia/onboarding/OnboardingFragment;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->enableSkip:Z

    .line 6
    .line 7
    new-instance p1, Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-direct {p1, v0, p0}, Lorg/wikipedia/main/MainFragment$PageChangeCallback;-><init>(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 14
    .line 15
    new-instance p1, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, v0}, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->forwardClickListener:Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final atLastPage()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    const/4 v1, 0x1

    .line 35
    sub-int/2addr p0, v1

    .line 36
    if-ne v0, p0, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    const/4 p0, 0x0

    .line 40
    return p0
.end method

.method public final callback()Lorg/wikipedia/onboarding/OnboardingFragment$Callback;
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
    const-class v2, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

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
    check-cast p0, Lorg/wikipedia/onboarding/OnboardingFragment$Callback;

    .line 68
    .line 69
    return-object p0
.end method

.method public abstract getAdapter()Landroidx/viewpager2/adapter/FragmentStateAdapter;
.end method

.method public abstract getDoneButtonText()I
.end method

.method public final onBackPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 24
    .line 25
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 v1, 0x1

    .line 39
    sub-int/2addr p0, v1

    .line 40
    invoke-virtual {v0, p0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0c01a0

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f09026f

    .line 13
    .line 14
    .line 15
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Landroid/widget/Button;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    const p2, 0x7f090270

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Landroid/widget/Button;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    move-object v2, p1

    .line 37
    check-cast v2, Landroid/widget/FrameLayout;

    .line 38
    .line 39
    const p2, 0x7f090272

    .line 40
    .line 41
    .line 42
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    move-object v5, v0

    .line 47
    check-cast v5, Landroid/widget/Button;

    .line 48
    .line 49
    if-eqz v5, :cond_1

    .line 50
    .line 51
    const p2, 0x7f090274

    .line 52
    .line 53
    .line 54
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    move-object v6, v0

    .line 59
    check-cast v6, Landroidx/viewpager2/widget/ViewPager2;

    .line 60
    .line 61
    if-eqz v6, :cond_1

    .line 62
    .line 63
    const p2, 0x7f09073c

    .line 64
    .line 65
    .line 66
    invoke-static {p1, p2}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    move-object v7, v0

    .line 71
    check-cast v7, Lcom/google/android/material/tabs/TabLayout;

    .line 72
    .line 73
    if-eqz v7, :cond_1

    .line 74
    .line 75
    new-instance v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 76
    .line 77
    invoke-direct/range {v1 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 81
    .line 82
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->getAdapter()Landroidx/viewpager2/adapter/FragmentStateAdapter;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {v6, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 90
    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    .line 97
    .line 98
    iget-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 101
    .line 102
    .line 103
    new-instance p1, Lokhttp3/Cache$RealCacheRequest;

    .line 104
    .line 105
    iget-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    .line 109
    .line 110
    iget-object p2, p2, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    .line 113
    .line 114
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 122
    .line 123
    new-instance v1, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;

    .line 124
    .line 125
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-direct {p1, p2, v0, v1}, Lokhttp3/Cache$RealCacheRequest;-><init>(Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager2/widget/ViewPager2;Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lokhttp3/Cache$RealCacheRequest;->attach()V

    .line 132
    .line 133
    .line 134
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 135
    .line 136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Landroid/widget/Button;

    .line 142
    .line 143
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->getDoneButtonText()I

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 148
    .line 149
    .line 150
    if-nez p3, :cond_0

    .line 151
    .line 152
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->updateButtonState()V

    .line 153
    .line 154
    .line 155
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 156
    .line 157
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 158
    .line 159
    .line 160
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 161
    .line 162
    check-cast p1, Landroid/widget/Button;

    .line 163
    .line 164
    new-instance p2, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;

    .line 165
    .line 166
    const/4 p3, 0x1

    .line 167
    invoke-direct {p2, p0, p3}, Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/onboarding/OnboardingFragment;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 174
    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast p1, Landroid/widget/Button;

    .line 181
    .line 182
    iget-object p2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->forwardClickListener:Lorg/wikipedia/onboarding/OnboardingFragment$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    iget-object p1, p1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast p1, Landroid/widget/Button;

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->updatePageIndicatorContentDescription()V

    .line 200
    .line 201
    .line 202
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    .line 206
    .line 207
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->canvas:Ljava/lang/Object;

    .line 208
    .line 209
    check-cast p0, Landroid/widget/FrameLayout;

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    return-object p0

    .line 215
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    const-string p1, "Missing required view with ID: "

    .line 224
    .line 225
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p0

    .line 229
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const/4 p0, 0x0

    .line 233
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    iget-object v0, v0, Landroidx/viewpager2/widget/ViewPager2;->mExternalPageChangeCallbacks:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 24
    .line 25
    iget-object v0, v0, Lorg/wikipedia/main/MainFragment$PageChangeCallback;->this$0:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    iget-object v2, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->pageChangeCallback:Lorg/wikipedia/main/MainFragment$PageChangeCallback;

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 38
    .line 39
    return-void
.end method

.method public final updateButtonState()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/wikipedia/onboarding/OnboardingFragment;->atLastPage()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/16 v3, 0x8

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Landroid/widget/Button;

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v0, Landroid/widget/Button;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Landroid/widget/Button;

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    iget-object v0, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->stateStack:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v0, Landroid/widget/Button;

    .line 53
    .line 54
    iget-boolean v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->enableSkip:Z

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    move v1, v2

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v1, v3

    .line 61
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->state:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v0, Landroid/widget/Button;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    iget-object p0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->document:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p0, Landroid/widget/Button;

    .line 84
    .line 85
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public final updatePageIndicatorContentDescription()V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lcom/caverock/androidsvg/SVGAndroidRenderer;->matrixStack:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    .line 9
    .line 10
    iget-object v1, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v1, v1, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    const/4 v2, 0x1

    .line 24
    add-int/2addr v1, v2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v3, p0, Lorg/wikipedia/onboarding/OnboardingFragment;->_binding:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v3, v3, Lcom/caverock/androidsvg/SVGAndroidRenderer;->parentStack:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v3, Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    .line 38
    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    const/4 v4, 0x2

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    .line 55
    .line 56
    const/4 v5, 0x0

    .line 57
    aput-object v1, v4, v5

    .line 58
    .line 59
    aput-object v3, v4, v2

    .line 60
    .line 61
    const v1, 0x7f1200d0

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v1, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
