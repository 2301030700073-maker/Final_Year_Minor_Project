.class public Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;
.super Lcom/takisoft/preferencex/EditTextPreference;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final inputType:I

.field public final passwordSubstitute:Ljava/lang/String;

.field public final passwordSubstituteLength:I

.field public summary:Ljava/lang/CharSequence;

.field public final summaryHasText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f04020f

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/takisoft/preferencex/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    .line 3
    .line 4
    const/4 p4, 0x1

    .line 5
    iput p4, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->inputType:I

    .line 6
    .line 7
    sget-object v0, Lcom/takisoft/preferencex/R$styleable;->AutoSummaryEditTextPreference:[I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    iput-object p3, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summaryHasText:Ljava/lang/CharSequence;

    .line 19
    .line 20
    invoke-virtual {p1, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    iput-object p3, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->passwordSubstitute:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    const/4 v2, 0x5

    .line 28
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->passwordSubstituteLength:I

    .line 33
    .line 34
    if-nez p3, :cond_0

    .line 35
    .line 36
    const-string/jumbo p3, "\u2022"

    .line 37
    .line 38
    .line 39
    iput-object p3, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->passwordSubstitute:Ljava/lang/String;

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    .line 43
    .line 44
    invoke-super {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iput-object p1, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summary:Ljava/lang/CharSequence;

    .line 49
    .line 50
    :goto_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ge v1, p1, :cond_2

    .line 55
    .line 56
    invoke-interface {p2, v1}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const p3, 0x1010220

    .line 61
    .line 62
    .line 63
    if-ne p3, p1, :cond_1

    .line 64
    .line 65
    invoke-interface {p2, v1, p4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    iput p1, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->inputType:I

    .line 70
    .line 71
    return-void

    .line 72
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method


# virtual methods
.method public final getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/preference/EditTextPreference;->mText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summary:Ljava/lang/CharSequence;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    iget v1, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->inputType:I

    .line 13
    .line 14
    and-int/lit8 v2, v1, 0x10

    .line 15
    .line 16
    const/16 v3, 0x10

    .line 17
    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    and-int/lit16 v2, v1, 0x80

    .line 21
    .line 22
    const/16 v3, 0x80

    .line 23
    .line 24
    if-eq v2, v3, :cond_1

    .line 25
    .line 26
    const/16 v2, 0xe0

    .line 27
    .line 28
    and-int/2addr v1, v2

    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    .line 31
    :cond_1
    new-instance v1, Ljava/lang/String;

    .line 32
    .line 33
    iget v2, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->passwordSubstituteLength:I

    .line 34
    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    :goto_0
    new-array v0, v2, [C

    .line 43
    .line 44
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 45
    .line 46
    .line 47
    const-string v0, "\u0000"

    .line 48
    .line 49
    iget-object v2, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->passwordSubstitute:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :cond_3
    iget-object p0, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summaryHasText:Ljava/lang/CharSequence;

    .line 56
    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    const/4 v1, 0x1

    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    const/4 v2, 0x0

    .line 67
    aput-object v0, v1, v2

    .line 68
    .line 69
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_4
    return-object v0
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summary:Ljava/lang/CharSequence;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summary:Ljava/lang/CharSequence;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summary:Ljava/lang/CharSequence;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    check-cast p1, Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/takisoft/preferencex/AutoSummaryEditTextPreference;->summary:Ljava/lang/CharSequence;

    .line 31
    .line 32
    :cond_1
    return-void
.end method
