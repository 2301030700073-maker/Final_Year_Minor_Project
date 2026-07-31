.class public final synthetic Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object v1, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/util/text/TextLinkifier$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Lus/shandian/giga/ui/adapter/MissionAdapter;

    .line 11
    .line 12
    check-cast v1, Landroid/app/NotificationManager;

    .line 13
    .line 14
    check-cast p1, Ljava/lang/String;

    .line 15
    .line 16
    iget-object p0, p0, Lus/shandian/giga/ui/adapter/MissionAdapter;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p0, p1}, Landroidx/transition/Transition$Impl26;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const p0, 0x1e38e

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :pswitch_0
    check-cast p0, Landroid/widget/TextView;

    .line 29
    .line 30
    check-cast v1, Ljava/util/function/Consumer;

    .line 31
    .line 32
    check-cast p1, Landroid/text/SpannableStringBuilder;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-interface {v1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
