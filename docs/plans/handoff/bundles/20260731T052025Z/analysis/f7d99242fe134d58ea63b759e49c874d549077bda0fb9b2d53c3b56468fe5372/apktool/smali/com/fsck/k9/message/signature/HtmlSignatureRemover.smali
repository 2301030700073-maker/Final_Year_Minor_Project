.class public abstract Lcom/fsck/k9/message/signature/HtmlSignatureRemover;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final BLOCKQUOTE:Lorg/jsoup/parser/Tag;

.field public static final BR:Lorg/jsoup/parser/Tag;

.field public static final DASH_SIGNATURE_HTML:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "\\s*--[ \u00a0]\\s*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->DASH_SIGNATURE_HTML:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "blockquote"

    .line 10
    .line 11
    const-string v1, "http://www.w3.org/1999/xhtml"

    .line 12
    .line 13
    sget-object v2, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    .line 14
    .line 15
    invoke-static {v0, v1, v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->BLOCKQUOTE:Lorg/jsoup/parser/Tag;

    .line 20
    .line 21
    const-string v0, "br"

    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/fsck/k9/message/signature/HtmlSignatureRemover;->BR:Lorg/jsoup/parser/Tag;

    .line 28
    .line 29
    return-void
.end method
