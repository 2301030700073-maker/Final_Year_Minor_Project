.class public final Lorg/wikipedia/edit/richtext/SyntaxRuleStyle$HEADING_SMALL;
.super Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "HEADING_SMALL"

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;
    .locals 0

    .line 1
    new-instance p0, Lorg/wikipedia/edit/richtext/RelativeSizeSpanEx;

    .line 2
    .line 3
    const p1, 0x3f8ccccd    # 1.1f

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lorg/wikipedia/edit/richtext/RelativeSizeSpanEx;->start:I

    .line 10
    .line 11
    iput-object p3, p0, Lorg/wikipedia/edit/richtext/RelativeSizeSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 12
    .line 13
    return-object p0
.end method
