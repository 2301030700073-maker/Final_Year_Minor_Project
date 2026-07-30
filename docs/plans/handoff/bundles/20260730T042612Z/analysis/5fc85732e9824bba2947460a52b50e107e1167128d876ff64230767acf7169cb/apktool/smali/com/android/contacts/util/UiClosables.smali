.class public Lcom/android/contacts/util/UiClosables;
.super Ljava/lang/Object;
.source "UiClosables.java"


# direct methods
.method public static closeQuietly(Landroid/widget/ListPopupWindow;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
