.class public final Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mInputText:Landroid/widget/EditText;

.field public mPosted:Z

.field public mSelectionEnd:I

.field public mSelectionStart:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mPosted:Z

    .line 3
    .line 4
    iget v0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mSelectionStart:I

    .line 5
    .line 6
    iget v1, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mSelectionEnd:I

    .line 7
    .line 8
    iget-object p0, p0, Lcom/takisoft/datetimepicker/widget/NumberPicker$SetSelectionCommand;->mInputText:Landroid/widget/EditText;

    .line 9
    .line 10
    invoke-virtual {p0, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
