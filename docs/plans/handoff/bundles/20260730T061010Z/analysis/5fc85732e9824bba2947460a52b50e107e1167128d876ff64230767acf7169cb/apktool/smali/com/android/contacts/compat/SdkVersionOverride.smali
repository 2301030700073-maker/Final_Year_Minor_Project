.class public Lcom/android/contacts/compat/SdkVersionOverride;
.super Ljava/lang/Object;
.source "SdkVersionOverride.java"


# direct methods
.method public static getSdkVersion(I)I
    .locals 0

    .line 43
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    return p0
.end method
