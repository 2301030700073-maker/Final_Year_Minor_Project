.class public final synthetic Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/random/RandomActivity;

.field public final synthetic f$1:Lorg/wikipedia/page/PageTitle;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/random/RandomActivity;Lorg/wikipedia/page/PageTitle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/random/RandomActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/page/PageTitle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    sget p1, Lorg/wikipedia/random/RandomActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p1, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;->f$0:Lorg/wikipedia/random/RandomActivity;

    .line 4
    .line 5
    iget-object p1, p1, Lorg/wikipedia/random/RandomActivity;->viewModel$delegate:Lokhttp3/Request$Builder;

    .line 6
    .line 7
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lorg/wikipedia/random/RandomViewModel;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/wikipedia/random/RandomActivity$$ExternalSyntheticLambda4;->f$1:Lorg/wikipedia/page/PageTitle;

    .line 14
    .line 15
    iput-object p0, p1, Lorg/wikipedia/random/RandomViewModel;->currentTitle:Lorg/wikipedia/page/PageTitle;

    .line 16
    .line 17
    invoke-virtual {p1}, Lorg/wikipedia/random/RandomViewModel;->refreshSaveState()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
