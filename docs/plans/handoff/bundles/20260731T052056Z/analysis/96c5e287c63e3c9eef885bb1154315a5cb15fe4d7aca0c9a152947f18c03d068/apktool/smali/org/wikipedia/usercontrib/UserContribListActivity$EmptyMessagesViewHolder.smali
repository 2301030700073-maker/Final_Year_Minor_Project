.class public final Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokio/internal/DefaultSocket;

.field public final synthetic this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/usercontrib/UserContribListActivity;Lokio/internal/DefaultSocket;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;->this$0:Lorg/wikipedia/usercontrib/UserContribListActivity;

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
    iput-object p2, p0, Lorg/wikipedia/usercontrib/UserContribListActivity$EmptyMessagesViewHolder;->binding:Lokio/internal/DefaultSocket;

    .line 11
    .line 12
    iget-object p0, p2, Lokio/internal/DefaultSocket;->closeBits:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast p0, Landroid/widget/TextView;

    .line 15
    .line 16
    new-instance p2, Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 17
    .line 18
    new-instance v0, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lorg/wikipedia/usercontrib/UserContribListActivity$$ExternalSyntheticLambda0;-><init>(Lorg/wikipedia/usercontrib/UserContribListActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p2, v0}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
