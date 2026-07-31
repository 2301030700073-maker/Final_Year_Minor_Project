.class public final Lcom/fsck/k9/message/html/SignatureWrapper;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/message/html/TextToHtml$HtmlModifier;


# static fields
.field public static final INSTANCE:Lcom/fsck/k9/message/html/SignatureWrapper;

.field public static final SIGNATURE_REGEX:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/fsck/k9/message/html/SignatureWrapper;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/fsck/k9/message/html/SignatureWrapper;->INSTANCE:Lcom/fsck/k9/message/html/SignatureWrapper;

    .line 7
    .line 8
    new-instance v0, Lkotlin/text/Regex;

    .line 9
    .line 10
    const-string v1, "(?m)^-- $"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/fsck/k9/message/html/SignatureWrapper;->SIGNATURE_REGEX:Lkotlin/text/Regex;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final findModifications(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/fsck/k9/message/html/SignatureWrapper;->SIGNATURE_REGEX:Lkotlin/text/Regex;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, p1}, Lkotlin/text/Regex;->find(ILjava/lang/CharSequence;)Lkotlin/text/MatcherMatchResult;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Lcom/fsck/k9/message/html/SignatureWrapper$Signature;

    .line 17
    .line 18
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getRange()Lkotlin/ranges/IntRange;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    iget p0, p0, Lkotlin/ranges/IntProgression;->first:I

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-direct {v0, p0, p1}, Lcom/fsck/k9/message/html/HtmlModification;-><init>(II)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method
