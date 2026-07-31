.class public final synthetic Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method public synthetic constructor <init>(ZLorg/wikipedia/edit/EditSectionActivity;I)V
    .locals 0

    .line 1
    iput p3, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-boolean p1, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;->f$0:Z

    .line 4
    .line 5
    iput-object p2, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/edit/EditSectionActivity;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget p2, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;->f$1:Lorg/wikipedia/edit/EditSectionActivity;

    .line 5
    .line 6
    iget-boolean p0, p0, Lorg/wikipedia/edit/EditSectionActivity$$ExternalSyntheticLambda0;->f$0:Z

    .line 7
    .line 8
    packed-switch p2, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    sget p2, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 12
    .line 13
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 14
    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lorg/wikipedia/edit/EditSectionActivity;->launchLogin(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :pswitch_0
    sget p2, Lorg/wikipedia/edit/EditSectionActivity;->$r8$clinit:I

    .line 23
    .line 24
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 25
    .line 26
    .line 27
    if-nez p0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lorg/wikipedia/edit/EditSectionActivity;->launchLogin(Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
