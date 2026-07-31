.class public final Lcom/takisoft/datetimepicker/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;


# direct methods
.method public constructor <init>(Lcom/takisoft/datetimepicker/widget/NumberPicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$2;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->sTwoDigitFormatter:Lcom/takisoft/datetimepicker/widget/NumberPicker$TwoDigitFormatter;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$2;->this$0:Lcom/takisoft/datetimepicker/widget/NumberPicker;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->hideSoftInput()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const v0, 0x7f090239

    .line 18
    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    const/4 v3, 0x1

    .line 23
    if-ne p1, v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {p0, v1, v2, v3}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(JZ)V

    .line 26
    .line 27
    .line 28
    return v3

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    invoke-virtual {p0, v1, v2, p1}, Lcom/takisoft/datetimepicker/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(JZ)V

    .line 31
    .line 32
    .line 33
    return v3
.end method
