.class public final Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field public final synthetic $backLinksList:Ljava/util/ArrayList;

.field public final synthetic $referenceAnchor:Ljava/lang/String;

.field public final synthetic $referenceText:Ljava/lang/String;

.field public final synthetic this$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public constructor <init>(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->$referenceAnchor:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->$referenceText:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->$backLinksList:Ljava/util/ArrayList;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const p1, 0x7f1203f5

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;

    .line 15
    .line 16
    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v4, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->$referenceText:Ljava/lang/String;

    .line 23
    .line 24
    iget-object v5, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->$backLinksList:Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v3, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->$referenceAnchor:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;-><init>(Lorg/wikipedia/page/PageFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 32
    .line 33
    .line 34
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 35
    .line 36
    .line 37
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$showFindReferenceInPage$1$1;->this$0:Lorg/wikipedia/page/PageFragment;

    .line 5
    .line 6
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->bridge:Lorg/wikipedia/bridge/CommunicationBridge;

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p1, "pcs.c1.Page.removeHighlightsFromHighlightedElements()"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lorg/wikipedia/bridge/CommunicationBridge;->execute(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "bridge"

    .line 17
    .line 18
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    throw p0
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    const-string p0, "actionModeFindReferenceInPage"

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method
