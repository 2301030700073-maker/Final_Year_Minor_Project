.class public final synthetic Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemSelectedListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lorg/wikipedia/main/MainFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/main/MainFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/main/MainFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/main/MainFragment$$ExternalSyntheticLambda0;->f$0:Lorg/wikipedia/main/MainFragment;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 14
    .line 15
    const/4 v0, -0x1

    .line 16
    if-ne p1, v0, :cond_0

    .line 17
    .line 18
    sget-object p1, Lorg/wikipedia/navtab/NavTab;->EDITS:Lorg/wikipedia/navtab/NavTab;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->onNavigateTo(Lorg/wikipedia/navtab/NavTab;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void

    .line 24
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lorg/wikipedia/main/MainFragment;->pendingDownloadImage:Lorg/wikipedia/feed/image/FeaturedImage;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lorg/wikipedia/main/MainFragment;->download(Lorg/wikipedia/feed/image/FeaturedImage;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const p1, 0x7f120257

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p0}, Lorg/wikipedia/util/ShareUtil;->showMessage(ILandroidx/fragment/app/Fragment;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    :goto_0
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
