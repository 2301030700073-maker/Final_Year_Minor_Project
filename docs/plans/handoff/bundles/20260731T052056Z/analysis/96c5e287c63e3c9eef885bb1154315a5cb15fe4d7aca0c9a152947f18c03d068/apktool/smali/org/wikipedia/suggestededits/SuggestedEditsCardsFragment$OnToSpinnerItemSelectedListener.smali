.class public final Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->$r8$classId:I

    .line 2
    .line 3
    const/4 p4, 0x0

    .line 4
    iget-object p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->this$0:Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    packed-switch p2, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 17
    .line 18
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 19
    .line 20
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    invoke-virtual {p5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p5

    .line 28
    check-cast p5, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p5

    .line 34
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swapLanguageSpinnerSelection(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    .line 45
    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 55
    .line 56
    .line 57
    move-result-object p5

    .line 58
    invoke-virtual {p5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p5

    .line 62
    check-cast p5, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p5

    .line 68
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-nez p1, :cond_1

    .line 73
    .line 74
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    check-cast p2, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    iput-object p2, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resetViewPagerItemAdapter()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, p4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateBackButton(I)V

    .line 103
    .line 104
    .line 105
    :cond_1
    return-void

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langFromCode:Ljava/lang/String;

    .line 111
    .line 112
    iget-object p2, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->app:Lorg/wikipedia/WikipediaApp;

    .line 113
    .line 114
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 115
    .line 116
    .line 117
    move-result-object p5

    .line 118
    invoke-virtual {p5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object p5

    .line 122
    check-cast p5, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p5

    .line 128
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    invoke-virtual {p0, p4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swapLanguageSpinnerSelection(Z)V

    .line 135
    .line 136
    .line 137
    :cond_2
    iget-boolean p1, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->swappingLanguageSpinners:Z

    .line 138
    .line 139
    if-nez p1, :cond_3

    .line 140
    .line 141
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    iget-object p1, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 148
    .line 149
    .line 150
    move-result-object p5

    .line 151
    invoke-virtual {p5}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object p5

    .line 155
    check-cast p5, Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p5

    .line 161
    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_3

    .line 166
    .line 167
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->getViewModel()Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p2}, Lorg/wikipedia/WikipediaApp;->getLanguageState()Lorg/wikipedia/language/AppLanguageState;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    invoke-virtual {p2}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageCodes()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    check-cast p2, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    check-cast p2, Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    .line 189
    .line 190
    iput-object p2, p1, Lorg/wikipedia/suggestededits/SuggestedEditsCardsViewModel;->langToCode:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p0}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->resetViewPagerItemAdapter()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p4}, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment;->updateBackButton(I)V

    .line 196
    .line 197
    .line 198
    :cond_3
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    iget p0, p0, Lorg/wikipedia/suggestededits/SuggestedEditsCardsFragment$OnToSpinnerItemSelectedListener;->$r8$classId:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    return-void
.end method
