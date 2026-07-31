.class public final Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public I$0:I

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Lorg/wikipedia/edit/richtext/SyntaxHighlighter$highlightOnScroll$1;->this$0:Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lorg/wikipedia/edit/richtext/SyntaxHighlighter;->highlightOnScroll(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method
