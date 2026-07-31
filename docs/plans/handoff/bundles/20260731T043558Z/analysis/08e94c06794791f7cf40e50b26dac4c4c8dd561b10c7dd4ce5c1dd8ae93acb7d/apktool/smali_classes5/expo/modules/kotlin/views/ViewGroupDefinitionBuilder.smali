.class public final Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;
.super Ljava/lang/Object;
.source "ViewGroupDefinitionBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParentType:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lexpo/modules/kotlin/modules/DefinitionMarker;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u00101\u001a\u000202Jg\u00103\u001a\u00020\u000f\"\n\u0008\u0001\u00104\u0018\u0001*\u00020\u000b2M\u0008\u0004\u00105\u001aG\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H4\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0007H\u0086\u0008\u00f8\u0001\u0000J1\u00106\u001a\u00020\u000f2#\u0008\u0004\u00105\u001a\u001d\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(7\u0012\u0004\u0012\u00020\r0\u001fH\u0086\u0008\u00f8\u0001\u0000JT\u00108\u001a\u00020\u000f\"\n\u0008\u0001\u00104\u0018\u0001*\u00020\u000b2:\u0008\u0004\u00105\u001a4\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0006\u0012\u0004\u0018\u0001H40\u0017H\u0086\u0008\u00f8\u0001\u0000JF\u00109\u001a\u00020\u000f28\u0008\u0004\u00105\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(7\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f0\u0017H\u0086\u0008\u00f8\u0001\u0000JR\u0010:\u001a\u00020\u000f\"\n\u0008\u0001\u00104\u0018\u0001*\u00020\u000b28\u0008\u0008\u00105\u001a2\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u0011H4\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u000f0\u0017H\u0086\u0008\u00f8\u0001\u0000Rq\u0010\u0006\u001aO\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000c\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0007j\u0004\u0018\u0001`\u00108\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0011\u0010\u0005\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R^\u0010\u0016\u001a<\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u0017j\u0004\u0018\u0001`\u00188\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0019\u0010\u0005\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dRG\u0010\u001e\u001a%\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u001fj\u0004\u0018\u0001` 8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008!\u0010\u0005\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\\\u0010&\u001a:\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\u000b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\'\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017j\u0004\u0018\u0001`(8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008)\u0010\u0005\u001a\u0004\u0008*\u0010\u001b\"\u0004\u0008+\u0010\u001dR\\\u0010,\u001a:\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017j\u0004\u0018\u0001`-8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008.\u0010\u0005\u001a\u0004\u0008/\u0010\u001b\"\u0004\u00080\u0010\u001d\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006;"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;",
        "ParentType",
        "Landroid/view/ViewGroup;",
        "",
        "<init>",
        "()V",
        "addViewAction",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "parent",
        "Landroid/view/View;",
        "child",
        "",
        "index",
        "",
        "Lexpo/modules/kotlin/views/AddViewAction;",
        "getAddViewAction$annotations",
        "getAddViewAction",
        "()Lkotlin/jvm/functions/Function3;",
        "setAddViewAction",
        "(Lkotlin/jvm/functions/Function3;)V",
        "getChildAtAction",
        "Lkotlin/Function2;",
        "Lexpo/modules/kotlin/views/GetChildAtAction;",
        "getGetChildAtAction$annotations",
        "getGetChildAtAction",
        "()Lkotlin/jvm/functions/Function2;",
        "setGetChildAtAction",
        "(Lkotlin/jvm/functions/Function2;)V",
        "getChildCountAction",
        "Lkotlin/Function1;",
        "Lexpo/modules/kotlin/views/GetChildCountAction;",
        "getGetChildCountAction$annotations",
        "getGetChildCountAction",
        "()Lkotlin/jvm/functions/Function1;",
        "setGetChildCountAction",
        "(Lkotlin/jvm/functions/Function1;)V",
        "removeViewAction",
        "childToRemove",
        "Lexpo/modules/kotlin/views/RemoveViewAction;",
        "getRemoveViewAction$annotations",
        "getRemoveViewAction",
        "setRemoveViewAction",
        "removeViewAtAction",
        "Lexpo/modules/kotlin/views/RemoveViewAtAction;",
        "getRemoveViewAtAction$annotations",
        "getRemoveViewAtAction",
        "setRemoveViewAtAction",
        "build",
        "Lexpo/modules/kotlin/views/ViewGroupDefinition;",
        "AddChildView",
        "ChildViewType",
        "body",
        "GetChildCount",
        "view",
        "GetChildViewAt",
        "RemoveChildViewAt",
        "RemoveChildView",
        "expo-modules-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private addViewAction:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private getChildAtAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private getChildCountAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private removeViewAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private removeViewAtAction:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getAddViewAction$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGetChildAtAction$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getGetChildCountAction$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRemoveViewAction$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRemoveViewAtAction$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final synthetic AddChildView(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ChildViewType:",
            "Landroid/view/View;",
            ">(",
            "Lkotlin/jvm/functions/Function3<",
            "-TParentType;-TChildViewType;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$AddChildView$1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$AddChildView$1;-><init>(Lkotlin/jvm/functions/Function3;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->setAddViewAction(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final GetChildCount(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TParentType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$GetChildCount$1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$GetChildCount$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->setGetChildCountAction(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final synthetic GetChildViewAt(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ChildViewType:",
            "Landroid/view/View;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TParentType;-",
            "Ljava/lang/Integer;",
            "+TChildViewType;>;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$GetChildViewAt$1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$GetChildViewAt$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->setGetChildAtAction(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final synthetic RemoveChildView(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ChildViewType:",
            "Landroid/view/View;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-TParentType;-TChildViewType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$RemoveChildView$1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$RemoveChildView$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->setRemoveViewAction(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final RemoveChildViewAt(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-TParentType;-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "body"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$RemoveChildViewAt$1;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder$RemoveChildViewAt$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->setRemoveViewAtAction(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final build()Lexpo/modules/kotlin/views/ViewGroupDefinition;
    .locals 7

    .line 26
    new-instance v6, Lexpo/modules/kotlin/views/ViewGroupDefinition;

    .line 27
    iget-object v1, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->addViewAction:Lkotlin/jvm/functions/Function3;

    .line 28
    iget-object v2, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->getChildAtAction:Lkotlin/jvm/functions/Function2;

    .line 29
    iget-object v3, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->getChildCountAction:Lkotlin/jvm/functions/Function1;

    .line 30
    iget-object v4, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->removeViewAction:Lkotlin/jvm/functions/Function2;

    .line 31
    iget-object v5, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->removeViewAtAction:Lkotlin/jvm/functions/Function2;

    move-object v0, v6

    .line 26
    invoke-direct/range {v0 .. v5}, Lexpo/modules/kotlin/views/ViewGroupDefinition;-><init>(Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-object v6
.end method

.method public final getAddViewAction()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->addViewAction:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getGetChildAtAction()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->getChildAtAction:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getGetChildCountAction()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->getChildCountAction:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getRemoveViewAction()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->removeViewAction:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getRemoveViewAtAction()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->removeViewAtAction:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final setAddViewAction(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Landroid/view/View;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->addViewAction:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setGetChildAtAction(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 14
    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->getChildAtAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setGetChildCountAction(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->getChildCountAction:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setRemoveViewAction(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->removeViewAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setRemoveViewAtAction(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/view/ViewGroup;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewGroupDefinitionBuilder;->removeViewAtAction:Lkotlin/jvm/functions/Function2;

    return-void
.end method
