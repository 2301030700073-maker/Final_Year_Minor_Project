.class public final synthetic Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget p1, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-ne p1, v0, :cond_2

    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iget-wide v2, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 23
    .line 24
    sub-long/2addr p1, v2

    .line 25
    const-wide/16 v2, 0x0

    .line 26
    .line 27
    cmp-long v2, p1, v2

    .line 28
    .line 29
    if-ltz v2, :cond_0

    .line 30
    .line 31
    const-wide/16 v2, 0x12c

    .line 32
    .line 33
    cmp-long p1, p1, v2

    .line 34
    .line 35
    if-lez p1, :cond_1

    .line 36
    .line 37
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->showHideDropdown()V

    .line 40
    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupDirty:Z

    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide p1

    .line 48
    iput-wide p1, p0, Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate;->dropdownPopupActivatedAt:J

    .line 49
    .line 50
    :cond_2
    return v1

    .line 51
    :pswitch_0
    check-cast p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;

    .line 52
    .line 53
    iget-object p0, p0, Lorg/schabi/newpipe/info_list/holder/CommentInfoItemHolder;->itemContentView:Landroid/widget/TextView;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    instance-of v2, p1, Landroid/text/Spanned;

    .line 60
    .line 61
    if-eqz v2, :cond_4

    .line 62
    .line 63
    check-cast p1, Landroid/text/Spanned;

    .line 64
    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eq v2, v0, :cond_3

    .line 70
    .line 71
    if-nez v2, :cond_4

    .line 72
    .line 73
    :cond_3
    invoke-static {p0, p2}, Landroidx/core/os/BundleKt;->getOffsetForHorizontalLine(Landroid/widget/TextView;Landroid/view/MotionEvent;)I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    const-class v3, Landroid/text/style/ClickableSpan;

    .line 78
    .line 79
    invoke-interface {p1, p2, p2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, [Landroid/text/style/ClickableSpan;

    .line 84
    .line 85
    array-length p2, p1

    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    if-ne v2, v0, :cond_5

    .line 89
    .line 90
    aget-object p1, p1, v1

    .line 91
    .line 92
    invoke-virtual {p1, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    move v0, v1

    .line 97
    :cond_5
    :goto_0
    return v0

    .line 98
    nop

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
