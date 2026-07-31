.class public final synthetic Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Action;
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    new-instance v0, Lorg/schabi/newpipe/error/ErrorInfo;

    .line 4
    .line 5
    sget-object v1, Lorg/schabi/newpipe/error/UserAction;->REQUESTED_STREAM:Lorg/schabi/newpipe/error/UserAction;

    .line 6
    .line 7
    const-string v2, "Saving stream info to database"

    .line 8
    .line 9
    iget-object v3, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 10
    .line 11
    invoke-direct {v0, p1, v1, v2, v3}, Lorg/schabi/newpipe/error/ErrorInfo;-><init>(Ljava/lang/Throwable;Lorg/schabi/newpipe/error/UserAction;Ljava/lang/String;Lorg/schabi/newpipe/extractor/Info;)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lorg/schabi/newpipe/error/ErrorUtil;->createNotification(Landroid/content/Context;Lorg/schabi/newpipe/error/ErrorInfo;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$0:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lnet/newpipe/app/AppKt;->getInstance(Landroid/content/Context;)Lorg/schabi/newpipe/database/AppDatabase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lorg/schabi/newpipe/database/AppDatabase;->streamDAO()Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lorg/schabi/newpipe/database/stream/model/StreamEntity;

    .line 12
    .line 13
    iget-object p0, p0, Lorg/schabi/newpipe/util/SparseItemUtil$$ExternalSyntheticLambda4;->f$1:Lorg/schabi/newpipe/extractor/stream/StreamInfo;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lorg/schabi/newpipe/database/stream/model/StreamEntity;-><init>(Lorg/schabi/newpipe/extractor/stream/StreamInfo;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/schabi/newpipe/database/stream/dao/StreamDAO_Impl;->upsert(Lorg/schabi/newpipe/database/stream/model/StreamEntity;)J

    .line 19
    .line 20
    .line 21
    return-void
.end method
