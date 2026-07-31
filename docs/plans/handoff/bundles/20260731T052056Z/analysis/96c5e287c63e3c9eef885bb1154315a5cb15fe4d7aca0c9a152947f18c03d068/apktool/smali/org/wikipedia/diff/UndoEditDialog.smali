.class public final Lorg/wikipedia/diff/UndoEditDialog;
.super Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public binding:Lokhttp3/ConnectionPool;

.field public dialog:Landroidx/appcompat/app/AlertDialog;


# virtual methods
.method public final show()Landroidx/appcompat/app/AlertDialog;
    .locals 5

    .line 1
    invoke-super {p0}, Lokio/PriorityQueue;->show()Landroidx/appcompat/app/AlertDialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lorg/wikipedia/diff/UndoEditDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    .line 8
    .line 9
    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Landroidx/appcompat/app/AlertController$AlertParams;

    .line 16
    .line 17
    iget-object v1, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/view/ContextThemeWrapper;

    .line 18
    .line 19
    new-instance v2, Landroid/util/TypedValue;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x1

    .line 29
    const v4, 0x7f0401c3

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v3, 0x0

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v2, v3

    .line 41
    :goto_0
    if-eqz v2, :cond_1

    .line 42
    .line 43
    iget v1, v2, Landroid/util/TypedValue;->data:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const-string p0, "Attribute not found; ID=2130969027"

    .line 50
    .line 51
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object v3

    .line 55
    :cond_2
    :goto_1
    iget-object p0, p0, Lorg/wikipedia/diff/UndoEditDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    return-object p0
.end method
