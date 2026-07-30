.class public Lcom/android/contacts/util/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContactDisplayUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 1

    const v0, 0x7f10006e

    if-nez p0, :cond_0

    return v0

    .line 57
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f100066

    return p0

    :pswitch_0
    const p0, 0x7f10006c

    return p0

    :pswitch_1
    const p0, 0x7f100061

    return p0

    :pswitch_2
    const p0, 0x7f10007a

    return p0

    :pswitch_3
    const p0, 0x7f100079

    return p0

    :pswitch_4
    const p0, 0x7f100076

    return p0

    :pswitch_5
    const p0, 0x7f100075

    return p0

    :pswitch_6
    const p0, 0x7f100071

    return p0

    :pswitch_7
    const p0, 0x7f10006f

    return p0

    :pswitch_8
    const p0, 0x7f10006b

    return p0

    :pswitch_9
    const p0, 0x7f10006a

    return p0

    :pswitch_a
    const p0, 0x7f100065

    return p0

    :pswitch_b
    const p0, 0x7f100064

    return p0

    :pswitch_c
    const p0, 0x7f100063

    return p0

    :pswitch_d
    return v0

    :pswitch_e
    const p0, 0x7f100070

    return p0

    :pswitch_f
    const p0, 0x7f100067

    return p0

    :pswitch_10
    const p0, 0x7f100068

    return p0

    :pswitch_11
    const p0, 0x7f100078

    return p0

    :pswitch_12
    const p0, 0x7f10006d

    return p0

    :pswitch_13
    const p0, 0x7f100069

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0

    .line 217
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p0

    .line 221
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 222
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0

    .line 245
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p0

    .line 249
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 1

    const v0, 0x7f10021f

    if-nez p0, :cond_0

    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f100217

    return p0

    :pswitch_0
    const p0, 0x7f10021d

    return p0

    :pswitch_1
    const p0, 0x7f100212

    return p0

    :pswitch_2
    const p0, 0x7f100227

    return p0

    :pswitch_3
    const p0, 0x7f100226

    return p0

    :pswitch_4
    const p0, 0x7f100224

    return p0

    :pswitch_5
    const p0, 0x7f100223

    return p0

    :pswitch_6
    const p0, 0x7f100222

    return p0

    :pswitch_7
    const p0, 0x7f100220

    return p0

    :pswitch_8
    const p0, 0x7f10021c

    return p0

    :pswitch_9
    const p0, 0x7f10021b

    return p0

    :pswitch_a
    const p0, 0x7f100216

    return p0

    :pswitch_b
    const p0, 0x7f100215

    return p0

    :pswitch_c
    const p0, 0x7f100214

    return p0

    :pswitch_d
    return v0

    :pswitch_e
    const p0, 0x7f100221

    return p0

    :pswitch_f
    const p0, 0x7f100218

    return p0

    :pswitch_10
    const p0, 0x7f100219

    return p0

    :pswitch_11
    const p0, 0x7f100225

    return p0

    :pswitch_12
    const p0, 0x7f10021e

    return p0

    :pswitch_13
    const p0, 0x7f10021a

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 176
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 180
    invoke-static {p1}, Lcom/android/contacts/compat/PhoneNumberUtilsCompat;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v3

    const/16 v4, 0x21

    .line 181
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 182
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 198
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-static {p0, p2}, Lcom/android/contacts/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x13

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 165
    :cond_0
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    :goto_0
    return p0
.end method
