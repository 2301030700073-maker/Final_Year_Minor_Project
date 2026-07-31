.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;

.field public final synthetic f$1:Landroid/widget/RadioGroup;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;->f$1:Landroid/widget/RadioGroup;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;->f$1:Landroid/widget/RadioGroup;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    const/4 v0, -0x1

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 14
    .line 15
    iget v1, v0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 16
    .line 17
    iput p1, v0, Lorg/schabi/newpipe/RouterActivity;->selectedRadioPosition:I

    .line 18
    .line 19
    if-ne v1, p1, :cond_1

    .line 20
    .line 21
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda13;->f$2:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method
