.class public final Lcom/fsck/k9/ui/identity/IdentityFormatter;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public static getEmailDisplayName(Lnet/thunderbird/core/android/account/Identity;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lnet/thunderbird/core/android/account/Identity;->name:Ljava/lang/String;

    .line 5
    .line 6
    iget-object p0, p0, Lnet/thunderbird/core/android/account/Identity;->email:Ljava/lang/String;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const-string p0, "Invalid"

    .line 11
    .line 12
    :cond_0
    if-eqz v0, :cond_1

    .line 13
    .line 14
    const-string v1, " <"

    .line 15
    .line 16
    const-string v2, ">"

    .line 17
    .line 18
    invoke-static {v0, v1, p0, v2}, Lcoil3/size/ViewSizeResolver$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_1
    return-object p0
.end method
