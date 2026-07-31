.class public final synthetic Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Landroidx/appcompat/app/AppCompatActivity;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    .line 8
    .line 9
    iput-object p4, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 13

    .line 1
    iget p1, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$3:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$1:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch p1, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    move-object v6, v4

    .line 15
    check-cast v6, Ljava/util/List;

    .line 16
    .line 17
    move-object v7, v3

    .line 18
    check-cast v7, Lorg/wikipedia/readinglist/database/ReadingListPage;

    .line 19
    .line 20
    move-object v9, v2

    .line 21
    check-cast v9, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 22
    .line 23
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 28
    .line 29
    new-instance v5, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;

    .line 30
    .line 31
    const/4 v10, 0x0

    .line 32
    const/4 v11, 0x6

    .line 33
    iget-object v8, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    .line 34
    .line 35
    invoke-direct/range {v5 .. v11}, Lorg/wikipedia/readinglist/LongPressMenu$show$1$1;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v2, v1, v5, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_0
    move-object v7, v4

    .line 43
    check-cast v7, Ljava/util/List;

    .line 44
    .line 45
    move-object v8, v3

    .line 46
    check-cast v8, Lorg/wikipedia/readinglist/database/ReadingList;

    .line 47
    .line 48
    move-object v10, v2

    .line 49
    check-cast v10, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil$SnackbarCallback;

    .line 50
    .line 51
    invoke-static {}, Lkotlinx/coroutines/AwaitKt;->MainScope()Lkotlinx/coroutines/internal/ContextScope;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v2, Lorg/wikipedia/readinglist/ReadingListBehaviorsUtil;->exceptionHandler:Lorg/wikipedia/talk/UserTalkPopupHelper$sendThanks$$inlined$CoroutineExceptionHandler$1;

    .line 56
    .line 57
    new-instance v6, Lcoil3/RealImageLoader$execute$result$1;

    .line 58
    .line 59
    const/4 v11, 0x0

    .line 60
    const/16 v12, 0x12

    .line 61
    .line 62
    iget-object v9, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    .line 63
    .line 64
    invoke-direct/range {v6 .. v12}, Lcoil3/RealImageLoader$execute$result$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v2, v1, v6, v0}, Lkotlinx/coroutines/AwaitKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :pswitch_1
    check-cast v4, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;

    .line 72
    .line 73
    check-cast v3, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;

    .line 74
    .line 75
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    iget-object p1, v4, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->editKeyboardOverlayFormatting:Landroid/view/View;

    .line 78
    .line 79
    check-cast p1, Landroid/widget/RadioGroup;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const v5, 0x7f0904a2

    .line 86
    .line 87
    .line 88
    if-ne p1, v5, :cond_0

    .line 89
    .line 90
    const/4 p1, 0x1

    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    goto :goto_0

    .line 96
    :cond_0
    const v5, 0x7f0904a0

    .line 97
    .line 98
    .line 99
    if-ne p1, v5, :cond_1

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    const v0, 0x7f09049f

    .line 107
    .line 108
    .line 109
    if-ne p1, v0, :cond_2

    .line 110
    .line 111
    const/4 p1, 0x3

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    const v0, 0x7f0904a1

    .line 118
    .line 119
    .line 120
    if-ne p1, v0, :cond_3

    .line 121
    .line 122
    const/4 p1, 0x4

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_0

    .line 128
    :cond_3
    const v0, 0x7f0904a3

    .line 129
    .line 130
    .line 131
    if-ne p1, v0, :cond_4

    .line 132
    .line 133
    const/4 p1, 0x5

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    :cond_4
    :goto_0
    iget-object p1, v4, Lorg/wikipedia/databinding/ActivityTalkReplyBinding;->replySubjectText:Landroid/view/View;

    .line 139
    .line 140
    check-cast p1, Lorg/wikipedia/views/PlainPasteEditText;

    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-virtual {v3, v1, p1}, Lorg/wikipedia/feed/HomeFragment$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    const p1, 0x7f120929

    .line 154
    .line 155
    .line 156
    iget-object p0, p0, Lorg/wikipedia/views/SurveyDialog$$ExternalSyntheticLambda5;->f$2:Landroidx/appcompat/app/AppCompatActivity;

    .line 157
    .line 158
    invoke-static {p0, p1}, Lorg/wikipedia/util/ShareUtil;->showMessage(Landroid/app/Activity;I)V

    .line 159
    .line 160
    .line 161
    iget-object p0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 162
    .line 163
    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    .line 164
    .line 165
    if-eqz p0, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 168
    .line 169
    .line 170
    :cond_5
    return-void

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
