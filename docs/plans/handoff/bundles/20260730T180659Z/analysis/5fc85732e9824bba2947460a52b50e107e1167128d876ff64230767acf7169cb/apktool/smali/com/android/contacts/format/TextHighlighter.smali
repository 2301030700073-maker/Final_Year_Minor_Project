.class public Lcom/android/contacts/format/TextHighlighter;
.super Ljava/lang/Object;
.source "TextHighlighter.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mTextStyle:I

.field private mTextStyleSpan:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/android/contacts/format/TextHighlighter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/format/TextHighlighter;->TAG:Ljava/lang/String;

    .line 36
    iput p1, p0, Lcom/android/contacts/format/TextHighlighter;->mTextStyle:I

    .line 37
    invoke-direct {p0}, Lcom/android/contacts/format/TextHighlighter;->getStyleSpan()Landroid/text/style/CharacterStyle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/contacts/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    return-void
.end method

.method private getStyleSpan()Landroid/text/style/CharacterStyle;
    .locals 2

    .line 52
    new-instance v0, Landroid/text/style/StyleSpan;

    iget v1, p0, Lcom/android/contacts/format/TextHighlighter;->mTextStyle:I

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public applyMaskingHighlight(Landroid/text/SpannableString;II)V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/android/contacts/format/TextHighlighter;->getStyleSpan()Landroid/text/style/CharacterStyle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 79
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 80
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-static {p1, p2}, Lcom/android/contacts/format/FormatUtils;->indexOfWordPrefix(Ljava/lang/CharSequence;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 87
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 88
    iget-object p1, p0, Lcom/android/contacts/format/TextHighlighter;->mTextStyleSpan:Landroid/text/style/CharacterStyle;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {v2, p1, v1, p2, v0}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v2

    :cond_2
    return-object p1
.end method

.method public setPrefixText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/format/TextHighlighter;->applyPrefixHighlight(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
