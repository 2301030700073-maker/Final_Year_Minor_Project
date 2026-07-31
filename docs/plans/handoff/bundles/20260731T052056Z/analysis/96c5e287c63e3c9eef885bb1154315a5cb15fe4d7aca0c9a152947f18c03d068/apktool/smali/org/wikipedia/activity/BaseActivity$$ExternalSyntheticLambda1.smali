.class public final synthetic Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;


# direct methods
.method public synthetic constructor <init>(Lcom/caverock/androidsvg/SVGAndroidRenderer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/16 v9, 0xf6

    .line 10
    .line 11
    iget-object v2, v0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 12
    .line 13
    const-string v3, "click"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    const-string v6, "cancel_button"

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-static/range {v2 .. v9}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_0
    const/16 v16, 0x0

    .line 25
    .line 26
    const/16 v17, 0xf4

    .line 27
    .line 28
    iget-object v10, v0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 29
    .line 30
    const-string v11, "click"

    .line 31
    .line 32
    const-string v12, "logout_warning"

    .line 33
    .line 34
    const/4 v13, 0x0

    .line 35
    const-string v14, "cancel_button"

    .line 36
    .line 37
    const/4 v15, 0x0

    .line 38
    invoke-static/range {v10 .. v17}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    const/4 v6, 0x0

    .line 43
    const/16 v7, 0xf6

    .line 44
    .line 45
    iget-object v0, v0, Lorg/wikipedia/activity/BaseActivity$$ExternalSyntheticLambda1;->f$0:Lcom/caverock/androidsvg/SVGAndroidRenderer;

    .line 46
    .line 47
    const-string v1, "click"

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    const-string v4, "cancel"

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-static/range {v0 .. v7}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->submitInteraction$default(Lcom/caverock/androidsvg/SVGAndroidRenderer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikimedia/testkitchen/context/PageData;Ljava/util/Map;I)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    nop

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
