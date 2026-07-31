.class public final Lorg/wikipedia/edit/richtext/SyntaxRuleStyle$SUPERSCRIPT;
.super Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "SUPERSCRIPT"

    .line 2
    .line 3
    const/16 v1, 0xc

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
    new-instance p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iput p2, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->start:I

    .line 8
    .line 9
    iput-object p3, p0, Lorg/wikipedia/edit/richtext/SubscriptSpanEx;->syntaxRule:Lorg/wikipedia/edit/richtext/SyntaxRule;

    .line 10
    .line 11
    return-object p0
.end method
