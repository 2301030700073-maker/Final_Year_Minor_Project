.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Landroid/net/Uri;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda30;->f$0:Landroid/net/Uri;

    iput-boolean p2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda30;->f$1:Z

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda30;->f$0:Landroid/net/Uri;

    iget-boolean v1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda30;->f$1:Z

    invoke-static {v0, v1}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$urFGz2W0Xp_MuFv9oNRvJPiqA-0(Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
