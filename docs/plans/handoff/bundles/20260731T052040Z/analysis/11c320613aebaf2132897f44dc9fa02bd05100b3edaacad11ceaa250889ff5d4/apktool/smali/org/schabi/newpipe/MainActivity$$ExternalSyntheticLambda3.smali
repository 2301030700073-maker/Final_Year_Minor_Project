.class public final synthetic Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/schabi/newpipe/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/MainActivity;

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
    iget p1, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda3;->f$0:Lorg/schabi/newpipe/MainActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/schabi/newpipe/MainActivity;->toggleServices()V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/schabi/newpipe/MainActivity;->onHomeButtonPressed()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity;->mainBinding:Lorg/jsoup/nodes/Printer;

    .line 21
    .line 22
    iget-object p0, p0, Lorg/jsoup/nodes/Printer;->root:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast p0, Lorg/schabi/newpipe/views/FocusAwareDrawerLayout;

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer$1()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 31
    .line 32
    const-string p1, "https://github.com/woheller69/FreeDroidWarn#solutions"

    .line 33
    .line 34
    invoke-static {p0, p1}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
