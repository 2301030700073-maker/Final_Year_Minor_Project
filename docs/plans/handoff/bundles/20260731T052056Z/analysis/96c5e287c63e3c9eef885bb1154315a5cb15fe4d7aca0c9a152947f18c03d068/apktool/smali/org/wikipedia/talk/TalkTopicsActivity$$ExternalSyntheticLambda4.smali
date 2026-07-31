.class public final synthetic Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/talk/TalkTopicsActivity$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lorg/wikipedia/widgets/SearchWidgetInstallDialog;

    .line 9
    .line 10
    iget-object v0, p0, Lorg/wikipedia/widgets/SearchWidgetInstallDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/16 v7, 0xf6

    .line 14
    .line 15
    const-string v1, "click"

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const-string v4, "install_close"

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_0
    check-cast p0, Lorg/wikipedia/usercontrib/UserContribListViewModel;

    .line 32
    .line 33
    new-instance v0, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-direct {v0, p0, v1}, Lorg/wikipedia/activitytab/timeline/TimelinePagingSource;-><init>(Landroidx/lifecycle/ViewModel;I)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_1
    check-cast p0, Lorg/wikipedia/talk/TalkTopicsActivity;

    .line 41
    .line 42
    sget v0, Lorg/wikipedia/talk/TalkTopicsActivity;->$r8$clinit:I

    .line 43
    .line 44
    new-instance v0, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    const-string v1, "title"

    .line 54
    .line 55
    const-class v2, Lorg/wikipedia/page/PageTitle;

    .line 56
    .line 57
    invoke-static {p0, v1, v2}, Landroidx/compose/ui/unit/DpKt;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroid/os/Parcelable;

    .line 62
    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    check-cast p0, Lorg/wikipedia/page/PageTitle;

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    invoke-direct {v0, v1, p0}, Lorg/wikipedia/talk/TalkTopicsViewModel$Factory;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
