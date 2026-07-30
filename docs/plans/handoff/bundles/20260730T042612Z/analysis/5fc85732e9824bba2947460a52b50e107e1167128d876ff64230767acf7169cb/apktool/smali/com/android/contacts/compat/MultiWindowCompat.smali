.class public Lcom/android/contacts/compat/MultiWindowCompat;
.super Ljava/lang/Object;
.source "MultiWindowCompat.java"


# direct methods
.method public static isInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 1

    .line 26
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isNCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
