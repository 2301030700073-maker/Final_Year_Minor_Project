.class public final synthetic Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/schabi/newpipe/MainActivity;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/schabi/newpipe/MainActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/MainActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    sget p1, Lorg/schabi/newpipe/MainActivity;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p1, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda2;->f$0:Lorg/schabi/newpipe/MainActivity;

    .line 4
    .line 5
    iget-object p0, p0, Lorg/schabi/newpipe/MainActivity$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1, p0}, Landroidx/transition/Transition$Impl26;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
