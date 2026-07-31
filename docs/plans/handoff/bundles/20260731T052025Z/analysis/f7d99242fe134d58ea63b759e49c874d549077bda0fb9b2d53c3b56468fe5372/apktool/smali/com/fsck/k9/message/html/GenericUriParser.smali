.class public final Lcom/fsck/k9/message/html/GenericUriParser;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Lcom/fsck/k9/message/html/UriParser;


# static fields
.field public static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[a-zA-Z][a-zA-Z0-9+.\\-]*:(?://[a-zA-Z0-9\\-._~%!$&\'()*+,;=:\\[\\]@]*)?(?:[a-zA-Z0-9\\-._~%!$&\'()*+,;=:@/]*)?(?:\\?[a-zA-Z0-9\\-._~%!$&\'()*+,;=:@/?]*)?(?:#[a-zA-Z0-9\\-._~%!$&\'()*+,;=:@/?]*)?"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fsck/k9/message/html/GenericUriParser;->PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final parseUri(ILjava/lang/CharSequence;)Lcom/fsck/k9/message/html/UriMatch;
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    if-ltz p1, :cond_2

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ge p1, v0, :cond_2

    .line 12
    .line 13
    sget-object v0, Lcom/fsck/k9/message/html/GenericUriParser;->PATTERN:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eq v1, p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    invoke-interface {p2, p0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    new-instance v0, Lcom/fsck/k9/message/html/UriMatch;

    .line 45
    .line 46
    invoke-direct {v0, p0, p1, p2}, Lcom/fsck/k9/message/html/UriMatch;-><init>(IILjava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_1
    :goto_0
    return-object p0

    .line 51
    :cond_2
    const-string p1, "Invalid \'startPos\' value"

    .line 52
    .line 53
    invoke-static {p1}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-object p0
.end method
