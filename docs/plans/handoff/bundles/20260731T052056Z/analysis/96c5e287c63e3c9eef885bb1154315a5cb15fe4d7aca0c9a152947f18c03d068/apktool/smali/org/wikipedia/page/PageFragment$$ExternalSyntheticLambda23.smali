.class public final synthetic Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    .line 2
    .line 3
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget p1, p1, Landroidx/activity/result/ActivityResult;->resultCode:I

    .line 9
    .line 10
    const/16 v0, 0x64

    .line 11
    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 15
    .line 16
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment;->campaignDialog:Lorg/wikipedia/page/campaign/CampaignDialog;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    iget-object p0, p0, Lorg/wikipedia/page/campaign/CampaignDialog;->dialog:Landroidx/appcompat/app/AlertDialog;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .line 1
    sget v0, Lorg/wikipedia/page/PageFragment;->REFRESH_SPINNER_ADDITIONAL_OFFSET:I

    .line 2
    .line 3
    iget-object p0, p0, Lorg/wikipedia/page/PageFragment$$ExternalSyntheticLambda23;->f$0:Lorg/wikipedia/page/PageFragment;

    .line 4
    .line 5
    invoke-virtual {p0}, Lorg/wikipedia/page/PageFragment;->getWebView$1()Lorg/wikipedia/views/ObservableWebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0}, Lorg/wikipedia/page/PageFragment;->refreshPage$default(Lorg/wikipedia/page/PageFragment;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
