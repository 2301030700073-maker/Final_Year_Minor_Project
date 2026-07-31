.class public final Lorg/wikipedia/edit/richtext/SyntaxRuleStyle$TEMPLATE;
.super Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TEMPLATE"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final createSpan(Landroid/content/Context;ILorg/wikipedia/edit/richtext/SyntaxRule;)Lorg/wikipedia/edit/richtext/SpanExtents;
    .locals 3

    .line 1
    new-instance p0, Lorg/wikipedia/edit/richtext/ColorSpanEx;

    .line 2
    .line 3
    new-instance v0, Landroid/util/TypedValue;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const/4 v1, 0x1

    .line 13
    const v2, 0x7f0404fb

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v0, v1

    .line 25
    :goto_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0, p2, p3}, Lorg/wikipedia/edit/richtext/ColorSpanEx;-><init>(IIILorg/wikipedia/edit/richtext/SyntaxRule;)V

    .line 31
    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    const-string p0, "Attribute not found; ID=2130969851"

    .line 35
    .line 36
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1
.end method
