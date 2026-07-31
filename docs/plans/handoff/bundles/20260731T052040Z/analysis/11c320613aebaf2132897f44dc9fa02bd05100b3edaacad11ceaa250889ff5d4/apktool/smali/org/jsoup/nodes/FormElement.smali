.class public final Lorg/jsoup/nodes/FormElement;
.super Lorg/jsoup/nodes/Element;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final linkedEls:Lorg/jsoup/select/Elements;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lorg/jsoup/internal/StringUtil;->padding:[Ljava/lang/String;

    .line 2
    .line 3
    sget-object v0, Lorg/jsoup/internal/QuietAppendable$BaseAppendable;->FormSubmitTags:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, ", "

    .line 10
    .line 11
    invoke-static {v1, v0}, Lorg/jsoup/internal/StringUtil;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lorg/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lorg/jsoup/select/Evaluator;

    .line 16
    .line 17
    .line 18
    return-void
.end method

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
