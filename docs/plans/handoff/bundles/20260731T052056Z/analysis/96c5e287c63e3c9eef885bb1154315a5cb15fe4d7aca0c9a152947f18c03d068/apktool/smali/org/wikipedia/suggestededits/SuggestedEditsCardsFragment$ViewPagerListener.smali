.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public prevPosition:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 8
    .line 9
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->IMAGE_RECOMMENDATIONS:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    if-ne v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget-object v1, v1, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroidx/viewpager2/widget/ViewPager2;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object v1, v2

    .line 38
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    check-cast v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;

    .line 42
    .line 43
    iput-boolean v3, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isVisibleToUser:Z

    .line 44
    .line 45
    iget-boolean v4, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isLoaded:Z

    .line 46
    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    iget-boolean v4, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isImpressionLogged:Z

    .line 50
    .line 51
    if-nez v4, :cond_3

    .line 52
    .line 53
    sget-object v4, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent;->Companion:Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;

    .line 54
    .line 55
    const/16 v5, 0xf

    .line 56
    .line 57
    invoke-static {v1, v2, v2, v2, v5}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getActionStringForAnalytics$default(Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1}, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    iget-object v5, v5, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragmentViewModel;->langCode:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    const-string v4, "recommendedimagetoolbar"

    .line 71
    .line 72
    invoke-static {v4, v2, v5}, Lorg/wikipedia/analytics/eventplatform/ImageRecommendationsEvent$Companion;->logImpression(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v3, v1, Lorg/wikipedia/suggestededits/SuggestedEditsImageRecsFragment;->isImpressionLogged:Z

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_1
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v1, v1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->action:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 83
    .line 84
    sget-object v2, Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;->VANDALISM_PATROL:Lorg/wikipedia/descriptions/DescriptionEditActivity$Action;

    .line 85
    .line 86
    if-ne v1, v2, :cond_3

    .line 87
    .line 88
    iget v1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->prevPosition:I

    .line 89
    .line 90
    if-ge p1, v1, :cond_2

    .line 91
    .line 92
    const-string v1, "edit_left_swipe"

    .line 93
    .line 94
    :goto_1
    move-object v5, v1

    .line 95
    goto :goto_2

    .line 96
    :cond_2
    const-string v1, "edit_right_swipe"

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :goto_2
    sget-object v1, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->INSTANCE:Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;

    .line 100
    .line 101
    new-instance v4, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;

    .line 102
    .line 103
    sget-object v1, Lorg/wikipedia/WikipediaApp;->instance:Lorg/wikipedia/WikipediaApp;

    .line 104
    .line 105
    invoke-static {}, Lcoil3/size/ViewSizeResolver$-CC;->m()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    sget-object v1, Lorg/wikipedia/settings/Prefs;->INSTANCE:Lorg/wikipedia/settings/Prefs;

    .line 110
    .line 111
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getRecentEditsWikiCode()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v9

    .line 115
    const-string v10, "app_patroller_experience"

    .line 116
    .line 117
    const-string v6, "pt_edit"

    .line 118
    .line 119
    const-string v7, ""

    .line 120
    .line 121
    invoke-direct/range {v4 .. v10}, Lorg/wikipedia/analytics/eventplatform/AppInteractionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v4}, Lorg/wikipedia/analytics/eventplatform/EventPlatformClient;->submit(Lorg/wikipedia/analytics/eventplatform/Event;)V

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_3
    invoke-virtual {v0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateBackButton(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateActionButton()V

    .line 131
    .line 132
    .line 133
    iput p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerListener;->prevPosition:I

    .line 134
    .line 135
    iget-object p0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getOffscreenPageLimit()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    mul-int/lit8 p0, p0, 0x2

    .line 149
    .line 150
    add-int/2addr p0, v3

    .line 151
    if-lt p1, p0, :cond_4

    .line 152
    .line 153
    iget-object v0, v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->_binding:Lorg/wikipedia/databinding/ActivityLoginBinding;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    iget-object v0, v0, Lorg/wikipedia/databinding/ActivityLoginBinding;->loginButton:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 161
    .line 162
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    check-cast v0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$ViewPagerAdapter;

    .line 170
    .line 171
    sub-int/2addr p1, p0

    .line 172
    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->getFragmentAt(I)Landroidx/fragment/app/Fragment;

    .line 173
    .line 174
    .line 175
    move-result-object p0

    .line 176
    if-eqz p0, :cond_4

    .line 177
    .line 178
    iget-object p1, v0, Lorg/wikipedia/views/PositionAwareFragmentStateAdapter;->fragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 181
    .line 182
    .line 183
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    .line 184
    .line 185
    invoke-direct {v0, p1}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, p0}, Landroidx/fragment/app/BackStackRecord;->remove(Landroidx/fragment/app/Fragment;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 192
    .line 193
    .line 194
    :cond_4
    return-void
.end method
