.class public final synthetic Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/fragments/list/search/SearchFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 9

    .line 1
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment$$ExternalSyntheticLambda9;->f$0:Lorg/schabi/newpipe/fragments/list/search/SearchFragment;

    .line 2
    .line 3
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showLocalSuggestions:Z

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-boolean p1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->showRemoteSuggestions:Z

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    :cond_0
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lorg/schabi/newpipe/fragments/BaseStateFragment;->errorPanelHelper:Lorg/schabi/newpipe/error/ErrorPanelHelper;

    .line 14
    .line 15
    iget-object p1, p1, Lorg/schabi/newpipe/error/ErrorPanelHelper;->errorPanelRoot:Landroid/view/View;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    const/4 v1, 0x1

    .line 25
    iput-boolean v1, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->suggestionsPanelVisible:Z

    .line 26
    .line 27
    iget-object p0, p0, Lorg/schabi/newpipe/fragments/list/search/SearchFragment;->searchBinding:Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;

    .line 28
    .line 29
    iget-object p0, p0, Lorg/schabi/newpipe/databinding/DrawerHeaderBinding;->drawerHeaderActionButton:Ljava/lang/Object;

    .line 30
    .line 31
    move-object v0, p0

    .line 32
    check-cast v0, Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/16 v8, 0x18

    .line 36
    .line 37
    const-wide/16 v2, 0xc8

    .line 38
    .line 39
    sget-object v4, Lorg/schabi/newpipe/ktx/AnimationType;->LIGHT_SLIDE_AND_ALPHA:Lorg/schabi/newpipe/ktx/AnimationType;

    .line 40
    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    invoke-static/range {v0 .. v8}, Lnet/newpipe/app/AppKt;->animate$default(Landroid/view/View;ZJLorg/schabi/newpipe/ktx/AnimationType;JLorg/schabi/newpipe/local/feed/FeedFragment$$ExternalSyntheticLambda13;I)V

    .line 44
    .line 45
    .line 46
    :cond_2
    return-void
.end method
