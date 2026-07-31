.class public final Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final binding:Lokio/internal/DefaultSocket;

.field public final synthetic this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;Lokio/internal/DefaultSocket;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;->this$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 2
    .line 3
    iget-object p1, p2, Lokio/internal/DefaultSocket;->socket:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast p1, Landroid/widget/FrameLayout;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$InsertMediaItemHolder;->binding:Lokio/internal/DefaultSocket;

    .line 11
    .line 12
    return-void
.end method
