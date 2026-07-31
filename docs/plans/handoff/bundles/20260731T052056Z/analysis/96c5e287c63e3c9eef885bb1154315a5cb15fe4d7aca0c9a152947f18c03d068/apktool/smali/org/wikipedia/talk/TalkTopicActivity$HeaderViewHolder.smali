.class public final Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/talk/TalkThreadHeaderView$Callback;


# instance fields
.field public final synthetic this$0:Lorg/wikipedia/talk/TalkTopicActivity;

.field public final view:Lorg/wikipedia/talk/TalkThreadHeaderView;


# direct methods
.method public constructor <init>(Lorg/wikipedia/talk/TalkTopicActivity;Lorg/wikipedia/talk/TalkThreadHeaderView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;->this$0:Lorg/wikipedia/talk/TalkTopicActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicActivity$HeaderViewHolder;->view:Lorg/wikipedia/talk/TalkThreadHeaderView;

    .line 7
    .line 8
    return-void
.end method
