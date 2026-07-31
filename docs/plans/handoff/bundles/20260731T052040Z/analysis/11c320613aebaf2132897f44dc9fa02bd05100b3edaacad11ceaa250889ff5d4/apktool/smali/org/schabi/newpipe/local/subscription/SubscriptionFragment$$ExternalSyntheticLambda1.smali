.class public final synthetic Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/StreamingService;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;Lorg/schabi/newpipe/extractor/StreamingService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-object v0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;->Companion:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$1:Lorg/schabi/newpipe/extractor/StreamingService;

    .line 4
    .line 5
    iget v0, v0, Lorg/schabi/newpipe/extractor/StreamingService;->serviceId:I

    .line 6
    .line 7
    iget-object p0, p0, Lorg/schabi/newpipe/local/subscription/SubscriptionFragment$$ExternalSyntheticLambda1;->f$0:Lorg/schabi/newpipe/local/subscription/SubscriptionFragment;

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/schabi/newpipe/BaseFragment;->getFM()Landroidx/fragment/app/FragmentManager;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroidx/sqlite/SQLite;->defaultTransaction(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/BackStackRecord;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    new-instance v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;

    .line 18
    .line 19
    invoke-direct {v1}, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;-><init>()V

    .line 20
    .line 21
    .line 22
    iput v0, v1, Lorg/schabi/newpipe/local/subscription/SubscriptionsImportFragment;->currentServiceId:I

    .line 23
    .line 24
    const v0, 0x7f0a01a9

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0, v0, v1, v2}, Landroidx/fragment/app/BackStackRecord;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroidx/fragment/app/BackStackRecord;->addToBackStack(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/BackStackRecord;->commit()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
