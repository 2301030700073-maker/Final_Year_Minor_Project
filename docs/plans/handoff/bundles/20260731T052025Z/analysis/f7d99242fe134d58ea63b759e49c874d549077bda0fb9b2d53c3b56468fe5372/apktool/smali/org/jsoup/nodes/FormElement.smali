.class public final Lorg/jsoup/nodes/FormElement;
.super Lorg/jsoup/nodes/Element;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public final linkedEls:Lorg/jsoup/select/Elements;


# direct methods
.method public constructor <init>(Lorg/jsoup/parser/Tag;Lorg/jsoup/nodes/Attributes;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;Lorg/jsoup/nodes/Attributes;)V

    .line 3
    .line 4
    .line 5
    new-instance p1, Lorg/jsoup/select/Elements;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lorg/jsoup/nodes/FormElement;->linkedEls:Lorg/jsoup/select/Elements;

    .line 11
    .line 12
    sget-object p0, Lorg/jsoup/internal/Functions;->FormSubmitTags:[Ljava/lang/String;

    .line 13
    .line 14
    sget-object p1, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string p1, ", "

    .line 21
    .line 22
    invoke-static {p0, p1}, Lorg/jsoup/internal/StringUtil;->join(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lorg/jsoup/nodes/FormElement;

    .line 6
    .line 7
    return-object p0
.end method

.method public final clone()Lorg/jsoup/nodes/Element;
    .locals 0

    .line 8
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/FormElement;

    return-object p0
.end method

.method public final clone()Lorg/jsoup/nodes/Node;
    .locals 0

    .line 9
    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/FormElement;

    return-object p0
.end method

.method public final removeChild(Lorg/jsoup/nodes/Node;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/jsoup/nodes/FormElement;->linkedEls:Lorg/jsoup/select/Elements;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lorg/jsoup/select/Elements;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method
