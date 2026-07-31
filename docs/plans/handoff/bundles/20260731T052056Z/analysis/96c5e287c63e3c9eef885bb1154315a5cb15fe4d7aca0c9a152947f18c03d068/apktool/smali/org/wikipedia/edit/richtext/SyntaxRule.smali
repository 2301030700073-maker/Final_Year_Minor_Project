.class public final Lorg/wikipedia/edit/richtext/SyntaxRule;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final endChars:[C

.field public final spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

.field public final startChars:[C


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p3, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->spanStyle:Lorg/wikipedia/edit/richtext/SyntaxRuleStyle;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->startChars:[C

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxRule;->endChars:[C

    .line 26
    .line 27
    return-void
.end method
