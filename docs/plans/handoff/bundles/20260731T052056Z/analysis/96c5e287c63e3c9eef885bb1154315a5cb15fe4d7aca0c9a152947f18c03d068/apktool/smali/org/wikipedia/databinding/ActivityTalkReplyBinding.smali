.class public final Lorg/wikipedia/databinding/ActivityTalkReplyBinding;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final editKeyboardOverlay:Landroid/view/ViewGroup;

.field public final editKeyboardOverlayFormatting:Landroid/view/View;

.field public final editKeyboardOverlayHeadings:Landroid/view/View;

.field public final footerContainer:Ljava/lang/Object;

.field public final learnMoreButton:Landroid/widget/TextView;

.field public final progressBar:Landroid/view/View;

.field public final replyInputView:Landroid/view/View;

.field public final replyNextButton:Landroid/widget/TextView;

.field public final replySubjectLayout:Landroid/view/View;

.field public final replySubjectText:Landroid/view/View;

.field public final replyToolbar:Landroid/view/View;

.field public final rootView:Landroid/view/View;

.field public final talkScrollContainer:Landroid/view/View;

.field public final threadItemView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Lorg/wikipedia/edit/WikiTextKeyboardView;Lorg/wikipedia/edit/WikiTextKeyboardFormattingView;Lorg/wikipedia/edit/WikiTextKeyboardHeadingsView;Lorg/wikipedia/databinding/ViewCustomCalendarDayBinding;Landroid/widget/TextView;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lorg/wikipedia/views/UserMentionInputView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputLayout;Lorg/wikipedia/views/PlainPasteEditText;Lcom/google/android/material/appbar/MaterialToolbar;Landroid/widget/ScrollView;Lorg/wikipedia/talk/TalkThreadItemView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 50
    iput-object p2, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 51
    iput-object p3, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 52
    iput-object p4, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 53
    iput-object p5, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 54
    iput-object p6, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 55
    iput-object p7, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 56
    iput-object p8, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 57
    iput-object p9, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 58
    iput-object p10, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 59
    iput-object p11, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 60
    iput-object p12, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyToolbar:Landroid/view/View;

    .line 61
    iput-object p13, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 62
    iput-object p14, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;Lorg/wikipedia/views/WikiErrorView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ProgressBar;Landroid/widget/ProgressBar;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/google/android/flexbox/FlexboxLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 35
    iput-object p3, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 36
    iput-object p4, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 37
    iput-object p5, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 38
    iput-object p6, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 39
    iput-object p7, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 40
    iput-object p8, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 41
    iput-object p9, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 42
    iput-object p10, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 43
    iput-object p11, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 44
    iput-object p12, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 45
    iput-object p13, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyToolbar:Landroid/view/View;

    .line 46
    iput-object p14, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 47
    iput-object p15, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/ScrollView;Lorg/wikipedia/views/PlainPasteEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->talkScrollContainer:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->rootView:Landroid/view/View;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlay:Landroid/view/ViewGroup;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 11
    .line 12
    iput-object p5, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectLayout:Landroid/view/View;

    .line 13
    .line 14
    iput-object p6, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 15
    .line 16
    iput-object p7, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->learnMoreButton:Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p8, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayHeadings:Landroid/view/View;

    .line 19
    .line 20
    iput-object p9, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->footerContainer:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p10, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->progressBar:Landroid/view/View;

    .line 23
    .line 24
    iput-object p11, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyInputView:Landroid/view/View;

    .line 25
    .line 26
    iput-object p12, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyToolbar:Landroid/view/View;

    .line 27
    .line 28
    iput-object p13, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->threadItemView:Landroid/view/View;

    .line 29
    .line 30
    iput-object p14, p0, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replyNextButton:Landroid/widget/TextView;

    .line 31
    .line 32
    return-void
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lorg/wikipedia/databinding/ActivityTalkReplyBinding;
    .locals 19

    .line 1
    const v0, 0x7f0c017c

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object/from16 v3, p0

    .line 7
    .line 8
    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x7f0900c4

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    move-object v6, v3

    .line 20
    check-cast v6, Landroid/widget/Button;

    .line 21
    .line 22
    if-eqz v6, :cond_0

    .line 23
    .line 24
    move-object v5, v0

    .line 25
    check-cast v5, Landroid/widget/ScrollView;

    .line 26
    .line 27
    const v1, 0x7f090234

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    move-object v8, v3

    .line 35
    check-cast v8, Lorg/wikipedia/views/PlainPasteEditText;

    .line 36
    .line 37
    if-eqz v8, :cond_0

    .line 38
    .line 39
    const v1, 0x7f090235

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    move-object v9, v3

    .line 47
    check-cast v9, Lcom/google/android/material/textfield/TextInputLayout;

    .line 48
    .line 49
    if-eqz v9, :cond_0

    .line 50
    .line 51
    const v1, 0x7f090236

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    move-object v10, v3

    .line 59
    check-cast v10, Landroid/widget/RadioGroup;

    .line 60
    .line 61
    if-eqz v10, :cond_0

    .line 62
    .line 63
    const v1, 0x7f09040a

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    move-object v11, v3

    .line 71
    check-cast v11, Landroid/widget/TextView;

    .line 72
    .line 73
    if-eqz v11, :cond_0

    .line 74
    .line 75
    const v1, 0x7f09049f

    .line 76
    .line 77
    .line 78
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    move-object v12, v3

    .line 83
    check-cast v12, Landroid/widget/RadioButton;

    .line 84
    .line 85
    if-eqz v12, :cond_0

    .line 86
    .line 87
    const v1, 0x7f0904a0

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    move-object v13, v3

    .line 95
    check-cast v13, Landroid/widget/RadioButton;

    .line 96
    .line 97
    if-eqz v13, :cond_0

    .line 98
    .line 99
    const v1, 0x7f0904a1

    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    move-object v14, v3

    .line 107
    check-cast v14, Landroid/widget/RadioButton;

    .line 108
    .line 109
    if-eqz v14, :cond_0

    .line 110
    .line 111
    const v1, 0x7f0904a2

    .line 112
    .line 113
    .line 114
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    move-object v15, v3

    .line 119
    check-cast v15, Landroid/widget/RadioButton;

    .line 120
    .line 121
    if-eqz v15, :cond_0

    .line 122
    .line 123
    const v1, 0x7f0904a3

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    move-object/from16 v16, v3

    .line 131
    .line 132
    check-cast v16, Landroid/widget/RadioButton;

    .line 133
    .line 134
    if-eqz v16, :cond_0

    .line 135
    .line 136
    const v1, 0x7f0904a5

    .line 137
    .line 138
    .line 139
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    check-cast v3, Landroid/widget/LinearLayout;

    .line 144
    .line 145
    if-eqz v3, :cond_0

    .line 146
    .line 147
    const v1, 0x7f090637

    .line 148
    .line 149
    .line 150
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    move-object/from16 v17, v3

    .line 155
    .line 156
    check-cast v17, Landroid/widget/Button;

    .line 157
    .line 158
    if-eqz v17, :cond_0

    .line 159
    .line 160
    const v1, 0x7f0906c6

    .line 161
    .line 162
    .line 163
    invoke-static {v0, v1}, Landroidx/room/Room;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    move-object/from16 v18, v3

    .line 168
    .line 169
    check-cast v18, Landroid/widget/TextView;

    .line 170
    .line 171
    if-eqz v18, :cond_0

    .line 172
    .line 173
    new-instance v4, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 174
    .line 175
    move-object v7, v5

    .line 176
    invoke-direct/range {v4 .. v18}, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/ScrollView;Lorg/wikipedia/views/PlainPasteEditText;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/RadioGroup;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 177
    .line 178
    .line 179
    return-object v4

    .line 180
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    const-string v1, "Missing required view with ID: "

    .line 189
    .line 190
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-object v2
.end method
