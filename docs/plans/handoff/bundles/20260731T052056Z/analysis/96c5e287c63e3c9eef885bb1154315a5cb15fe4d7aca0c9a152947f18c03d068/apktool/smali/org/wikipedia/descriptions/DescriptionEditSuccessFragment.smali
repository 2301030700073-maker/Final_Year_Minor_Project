.class public final Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;
.super Landroidx/fragment/app/Fragment;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;",
        "Landroidx/fragment/app/Fragment;",
        "Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;",
        "<init>",
        "()V",
        "Callback",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public _binding:Lretrofit2/OkHttpCall$1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const p3, 0x7f0c0192

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    check-cast p1, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    .line 15
    .line 16
    new-instance p2, Lretrofit2/OkHttpCall$1;

    .line 17
    .line 18
    const/4 p3, 0x7

    .line 19
    invoke-direct {p2, p3, p1, p1}, Lretrofit2/OkHttpCall$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iput-object p2, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 23
    .line 24
    invoke-virtual {p1, p0}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 28
    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lretrofit2/OkHttpCall$1;->val$callback:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_0
    const-string p0, "rootView"

    .line 38
    .line 39
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$3(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x0

    .line 43
    return-object p0
.end method

.method public final onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v0, v0, Lretrofit2/OkHttpCall$1;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Lorg/wikipedia/descriptions/DescriptionEditSuccessView;->setCallback(Lorg/wikipedia/descriptions/DescriptionEditSuccessView$Callback;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lorg/wikipedia/descriptions/DescriptionEditSuccessFragment;->_binding:Lretrofit2/OkHttpCall$1;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mCalled:Z

    .line 18
    .line 19
    return-void
.end method
