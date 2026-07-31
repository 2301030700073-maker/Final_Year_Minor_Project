.class public final synthetic Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/RouterActivity;

.field public final synthetic f$1:Landroid/widget/RadioGroup;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/RouterActivity;Landroid/widget/RadioGroup;Ljava/util/ArrayList;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/RadioGroup;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$2:Ljava/util/ArrayList;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$3:Landroid/content/SharedPreferences;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    sget p1, Lorg/schabi/newpipe/RouterActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$1:Landroid/widget/RadioGroup;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    iget-object v0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$2:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;

    .line 24
    .line 25
    iget-object v0, p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v1, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/RouterActivity;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/RouterActivity;->handleChoice(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, -0x1

    .line 33
    if-ne p2, v0, :cond_0

    .line 34
    .line 35
    iget-object p0, p0, Lorg/schabi/newpipe/RouterActivity$$ExternalSyntheticLambda9;->f$3:Landroid/content/SharedPreferences;

    .line 36
    .line 37
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const p2, 0x7f1303f2

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    iget-object p1, p1, Lorg/schabi/newpipe/RouterActivity$AdapterChoiceItem;->key:Ljava/lang/String;

    .line 49
    .line 50
    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
