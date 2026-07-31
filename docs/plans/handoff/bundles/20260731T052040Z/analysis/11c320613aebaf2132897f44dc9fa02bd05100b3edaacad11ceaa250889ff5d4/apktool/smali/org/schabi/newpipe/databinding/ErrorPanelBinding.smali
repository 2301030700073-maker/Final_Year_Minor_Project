.class public final Lorg/schabi/newpipe/databinding/ErrorPanelBinding;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final synthetic $r8$classId:I

.field public final rootView:Landroid/widget/LinearLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->rootView:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static bind(Landroid/view/View;)Lorg/schabi/newpipe/databinding/ErrorPanelBinding;
    .locals 2

    .line 1
    const v0, 0x7f0a0155

    .line 2
    .line 3
    .line 4
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/widget/Button;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const v0, 0x7f0a0157

    .line 13
    .line 14
    .line 15
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    const v0, 0x7f0a0158

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const v0, 0x7f0a0159

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lorg/schabi/newpipe/views/NewPipeTextView;

    .line 42
    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    const v0, 0x7f0a015a

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/Button;

    .line 53
    .line 54
    if-eqz v1, :cond_0

    .line 55
    .line 56
    const v0, 0x7f0a015c

    .line 57
    .line 58
    .line 59
    invoke-static {v0, p0}, Lokio/Options$Companion;->findChildViewById(ILandroid/view/View;)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/widget/Button;

    .line 64
    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    new-instance v0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;

    .line 68
    .line 69
    check-cast p0, Landroid/widget/LinearLayout;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, p0, v1}, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;-><init>(Landroid/widget/LinearLayout;I)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    const-string v0, "Missing required view with ID: "

    .line 85
    .line 86
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    invoke-static {p0}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfObject$$ExternalSyntheticLambda0;->m$1(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const/4 p0, 0x0

    .line 94
    return-object p0
.end method


# virtual methods
.method public final getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/ErrorPanelBinding;->rootView:Landroid/widget/LinearLayout;

    .line 4
    .line 5
    return-object p0
.end method
