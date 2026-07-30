.class public Lcom/android/contacts/compat/PhoneNumberFormattingTextWatcherCompat;
.super Ljava/lang/Object;
.source "PhoneNumberFormattingTextWatcherCompat.java"


# direct methods
.method public static newInstance(Ljava/lang/String;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 1

    .line 22
    invoke-static {}, Lcom/android/contacts/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_0
    new-instance p0, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-direct {p0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;-><init>()V

    return-object p0
.end method
