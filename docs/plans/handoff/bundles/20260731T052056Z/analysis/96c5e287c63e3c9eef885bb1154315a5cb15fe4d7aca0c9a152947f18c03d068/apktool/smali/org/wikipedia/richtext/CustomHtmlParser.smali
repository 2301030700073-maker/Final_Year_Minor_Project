.class public final Lorg/wikipedia/richtext/CustomHtmlParser;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/text/Html$TagHandler;
.implements Lorg/xml/sax/ContentHandler;


# static fields
.field public static final contextBmpMap:Ljava/util/LinkedHashMap;


# instance fields
.field public final handler:Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

.field public final tagStatus:Lkotlin/collections/ArrayDeque;

.field public text:Landroid/text/Editable;

.field public wrapped:Lorg/xml/sax/ContentHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/wikipedia/richtext/CustomHtmlParser;->contextBmpMap:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->handler:Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

    .line 5
    .line 6
    new-instance p1, Lkotlin/collections/ArrayDeque;

    .line 7
    .line 8
    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->tagStatus:Lkotlin/collections/ArrayDeque;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final endDocument()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->tagStatus:Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->text:Landroid/text/Editable;

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->handler:Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/XMLReader;)V
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->text:Landroid/text/Editable;

    .line 9
    .line 10
    invoke-interface {p4}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 15
    .line 16
    invoke-interface {p4, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final ignorableWhitespace([CII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final skippedEntity(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final startDocument()V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->text:Landroid/text/Editable;

    .line 3
    .line 4
    iget-object v2, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->handler:Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;

    .line 5
    .line 6
    invoke-virtual {v2, v0, p2, v1, p4}, Lorg/wikipedia/richtext/CustomHtmlParser$CustomTagHandler;->handleTag(ZLjava/lang/String;Landroid/text/Editable;Lorg/xml/sax/Attributes;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-object v1, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->tagStatus:Lkotlin/collections/ArrayDeque;

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 22
    .line 23
    if-eqz p0, :cond_0

    .line 24
    .line 25
    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/wikipedia/richtext/CustomHtmlParser;->wrapped:Lorg/xml/sax/ContentHandler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
