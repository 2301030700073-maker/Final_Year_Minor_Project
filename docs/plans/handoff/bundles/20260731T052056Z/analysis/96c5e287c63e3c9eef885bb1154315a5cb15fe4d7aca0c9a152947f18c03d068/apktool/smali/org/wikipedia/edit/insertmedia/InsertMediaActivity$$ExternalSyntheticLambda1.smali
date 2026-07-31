.class public final synthetic Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity$$ExternalSyntheticLambda1;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroid/view/MenuItem;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 24
    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    iget-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->searchActionModeCallback:Lorg/wikipedia/talk/TalkTopicActivity$SearchCallback;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->startSupportActionMode(Landroidx/appcompat/view/ActionMode$Callback;)Landroidx/appcompat/view/ActionMode;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaActivity;->actionMode:Landroidx/appcompat/view/ActionMode;

    .line 34
    .line 35
    :cond_0
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
