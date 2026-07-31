.class public final synthetic Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/talk/template/TalkTemplatesItemView;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 5
    .line 6
    iput p2, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/talk/template/TalkTemplatesItemView;

    .line 5
    .line 6
    iget-object p2, p1, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->callback:Lorg/wikipedia/talk/template/TalkTemplatesItemView$Callback;

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    check-cast p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;

    .line 11
    .line 12
    iget-object v0, p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->this$0:Lorg/wikipedia/talk/template/TalkTemplatesFragment;

    .line 13
    .line 14
    iget-object p2, p2, Lorg/wikipedia/talk/template/TalkTemplatesFragment$RecyclerAdapter;->templatesList:Ljava/util/ArrayList;

    .line 15
    .line 16
    iget p0, p0, Lorg/wikipedia/talk/template/TalkTemplatesItemView$$ExternalSyntheticLambda2;->f$1:I

    .line 17
    .line 18
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lorg/wikipedia/talk/db/TalkTemplate;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lorg/wikipedia/talk/template/TalkTemplatesFragment;->toggleSelectedItem(Lorg/wikipedia/talk/db/TalkTemplate;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    invoke-virtual {p1}, Lorg/wikipedia/talk/template/TalkTemplatesItemView;->updateBackgroundColor()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
