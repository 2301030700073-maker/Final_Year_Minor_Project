.class public final synthetic Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

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
    .locals 0

    .line 1
    iget p1, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/edit/insertmedia/InsertMediaAdvancedSettingsFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    new-instance p1, Lorg/wikipedia/edit/insertmedia/InsertMediaImageSizeDialog;

    .line 16
    .line 17
    invoke-direct {p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaImageSizeDialog;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p1, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;

    .line 32
    .line 33
    invoke-direct {p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaImageTypeDialog;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    new-instance p1, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;

    .line 48
    .line 49
    invoke-direct {p1}, Lorg/wikipedia/edit/insertmedia/InsertMediaImagePositionDialog;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {p0, p1}, Lokio/Okio__OkioKt;->show(Landroidx/fragment/app/FragmentManagerImpl;Landroidx/fragment/app/DialogFragment;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
