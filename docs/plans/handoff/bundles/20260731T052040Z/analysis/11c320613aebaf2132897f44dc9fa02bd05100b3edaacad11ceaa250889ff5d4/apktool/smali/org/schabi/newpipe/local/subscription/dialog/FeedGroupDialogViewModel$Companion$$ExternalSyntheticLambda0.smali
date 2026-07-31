.class public final synthetic Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 5
    .line 6
    iput-wide p2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-object p4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Landroidx/lifecycle/viewmodel/CreationExtras;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;

    .line 7
    .line 8
    iget-object p1, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget-wide v2, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$1:J

    .line 18
    .line 19
    iget-object v4, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 20
    .line 21
    iget-boolean v5, p0, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel$Companion$$ExternalSyntheticLambda0;->f$3:Z

    .line 22
    .line 23
    invoke-direct/range {v0 .. v5}, Lorg/schabi/newpipe/local/subscription/dialog/FeedGroupDialogViewModel;-><init>(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
