.class public final Lcom/tokenautocomplete/TokenCompleteTextView$1;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroid/text/InputFilter;


# instance fields
.field public final synthetic this$0:Lcom/tokenautocomplete/TokenCompleteTextView;


# direct methods
.method public constructor <init>(Lcom/tokenautocomplete/TokenCompleteTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tokenautocomplete/TokenCompleteTextView$1;->this$0:Lcom/tokenautocomplete/TokenCompleteTextView;

    .line 2
    .line 3
    iget-boolean p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->internalEditInProgress:Z

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 9
    .line 10
    const/4 p3, -0x1

    .line 11
    const-string p4, ""

    .line 12
    .line 13
    if-eq p2, p3, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->getObjects()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    iget p3, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenLimit:I

    .line 24
    .line 25
    if-ne p2, p3, :cond_1

    .line 26
    .line 27
    return-object p4

    .line 28
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    const/4 p3, 0x1

    .line 33
    if-ne p2, p3, :cond_3

    .line 34
    .line 35
    iget-object p2, p0, Lcom/tokenautocomplete/TokenCompleteTextView;->tokenizer:Lcom/tokenautocomplete/Tokenizer;

    .line 36
    .line 37
    check-cast p2, Lcom/tokenautocomplete/CharacterTokenizer;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result p5

    .line 47
    if-ge p3, p5, :cond_3

    .line 48
    .line 49
    iget-object p5, p2, Lcom/tokenautocomplete/CharacterTokenizer;->splitChar:Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 52
    .line 53
    .line 54
    move-result p6

    .line 55
    invoke-static {p6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 56
    .line 57
    .line 58
    move-result-object p6

    .line 59
    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p5

    .line 63
    if-eqz p5, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/tokenautocomplete/TokenCompleteTextView;->performCompletion()V

    .line 66
    .line 67
    .line 68
    return-object p4

    .line 69
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method
