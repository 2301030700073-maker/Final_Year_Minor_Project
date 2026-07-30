.class public Lcom/android/contacts/detail/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field private static sBidiFormatter:Landroid/text/BidiFormatter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactDisplayUtils;->sBidiFormatter:Landroid/text/BidiFormatter;

    return-void
.end method

.method public static configureStarredMenuItem(Landroid/view/MenuItem;ZZZ)V
    .locals 0

    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x1

    .line 161
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-eqz p3, :cond_0

    const p1, 0x7f0800ce

    goto :goto_0

    :cond_0
    const p1, 0x7f0800cd

    .line 165
    :goto_0
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 166
    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    if-eqz p3, :cond_1

    const p1, 0x7f100197

    goto :goto_1

    :cond_1
    const p1, 0x7f10017f

    .line 167
    :goto_1
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 169
    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return-void
.end method

.method public static getDisplayName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/CharSequence;
    .locals 3

    .line 62
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result p0

    const/16 p1, 0x14

    if-ne p0, p1, :cond_0

    .line 67
    sget-object p0, Lcom/android/contacts/detail/ContactDisplayUtils;->sBidiFormatter:Landroid/text/BidiFormatter;

    .line 68
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 67
    invoke-virtual {p0, p1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getAltDisplayName()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p1

    .line 78
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1001a6

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;
    .locals 0

    .line 85
    invoke-virtual {p1}, Lcom/android/contacts/model/Contact;->getPhoneticName()Ljava/lang/String;

    move-result-object p0

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
