.class public final Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokio/internal/DefaultSocket;

.field public final synthetic this$0:Lorg/wikipedia/page/references/ReferenceDialog;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/references/ReferenceDialog;Lokio/internal/DefaultSocket;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    .line 2
    .line 3
    iget-object v0, p2, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/LinearLayout;

    .line 6
    .line 7
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->binding:Lokio/internal/DefaultSocket;

    .line 11
    .line 12
    iget-object p0, p2, Lokio/internal/DefaultSocket;->sink:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Lorg/wikipedia/views/AppTextView;

    .line 15
    .line 16
    new-instance p2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 17
    .line 18
    invoke-virtual {p1}, Lorg/wikipedia/page/references/ReferenceDialog;->callback()Lorg/wikipedia/page/references/ReferenceDialog$Callback;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Lorg/wikipedia/page/references/ReferenceDialog$Callback;->getLinkHandler()Lorg/wikipedia/page/LinkHandler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    invoke-direct {p2, p1}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandlerWithText;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
