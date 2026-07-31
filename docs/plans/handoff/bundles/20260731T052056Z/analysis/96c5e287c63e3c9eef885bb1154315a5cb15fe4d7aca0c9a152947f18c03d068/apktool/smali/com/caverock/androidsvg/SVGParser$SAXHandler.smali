.class public final Lcom/caverock/androidsvg/SVGParser$SAXHandler;
.super Lorg/xml/sax/ext/DefaultHandler2;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final synthetic this$0:Lcom/caverock/androidsvg/SVGParser;


# direct methods
.method public constructor <init>(Lcom/caverock/androidsvg/SVGParser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/xml/sax/ext/DefaultHandler2;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/caverock/androidsvg/SVGParser;->text(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final endDocument()V
    .locals 0

    .line 1
    return-void
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/caverock/androidsvg/SVGParser;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Lcom/caverock/androidsvg/SVG$PathDefinition;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/SVG$PathDefinition;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lcom/caverock/androidsvg/SVGParser;->parseProcessingInstructionAttributes(Lcom/caverock/androidsvg/SVG$PathDefinition;)Ljava/util/HashMap;

    .line 7
    .line 8
    .line 9
    const-string/jumbo p0, "xml-stylesheet"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final startDocument()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser;->startDocument()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVGParser$SAXHandler;->this$0:Lcom/caverock/androidsvg/SVGParser;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/SVGParser;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
