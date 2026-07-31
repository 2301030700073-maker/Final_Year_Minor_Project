.class public final synthetic Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;

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
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 4
    .line 5
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 6
    .line 7
    iget-object v0, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog$$ExternalSyntheticLambda2;->f$0:Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;

    .line 8
    .line 9
    packed-switch v1, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;->onCreateView$lambda$0$0$0$2$0$0(Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;)V

    .line 13
    .line 14
    .line 15
    return-object v2

    .line 16
    :pswitch_0
    iget-object v3, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 17
    .line 18
    const/4 v9, 0x0

    .line 19
    const/16 v10, 0xf6

    .line 20
    .line 21
    const-string v4, "click"

    .line 22
    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    const-string v7, "install_close"

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    invoke-static/range {v3 .. v10}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :pswitch_1
    iget-object v11, v0, Lorg/wikipedia/widgets/readingchallenge/ReadingChallengeInstallWidgetDialog;->instrument:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 36
    .line 37
    const/16 v17, 0x0

    .line 38
    .line 39
    const/16 v18, 0xf6

    .line 40
    .line 41
    const-string v12, "click"

    .line 42
    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v14, 0x0

    .line 45
    const-string v15, "install_accept"

    .line 46
    .line 47
    const/16 v16, 0x0

    .line 48
    .line 49
    invoke-static/range {v11 .. v18}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
