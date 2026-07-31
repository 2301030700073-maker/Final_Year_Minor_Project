.class public final Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final config:Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/fsck/k9/contacts/ContactLetterExtractor;->EXTRACT_LETTER_PATTERN:Lkotlin/text/Regex;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/contacts/ContactLetterExtractor;Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;->config:Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final calcUnknownContactColor(Lcom/fsck/k9/mail/Address;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;->config:Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->hasDefaultBackgroundColor:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget p0, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->defaultBackgroundColor:I

    .line 11
    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/fsck/k9/mail/Address;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object p0, p0, Lcom/fsck/k9/contacts/ContactLetterBitmapConfig;->backgroundColors:[I

    .line 18
    .line 19
    const v0, 0x7fffffff

    .line 20
    .line 21
    .line 22
    and-int/2addr p1, v0

    .line 23
    array-length v0, p0

    .line 24
    rem-int/2addr p1, v0

    .line 25
    aget p0, p0, p1

    .line 26
    .line 27
    return p0
.end method
