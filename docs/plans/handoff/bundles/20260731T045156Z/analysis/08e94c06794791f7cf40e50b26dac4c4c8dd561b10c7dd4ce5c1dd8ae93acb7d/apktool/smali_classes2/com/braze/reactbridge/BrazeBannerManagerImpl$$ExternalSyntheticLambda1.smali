.class public final synthetic Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/braze/reactbridge/BannerContainer;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$DoubleRef;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/facebook/react/bridge/ReactContext;


# direct methods
.method public synthetic constructor <init>(Lcom/braze/reactbridge/BannerContainer;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/facebook/react/bridge/ReactContext;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/braze/reactbridge/BannerContainer;

    iput-object p2, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$DoubleRef;

    iput p3, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$3:Lcom/facebook/react/bridge/ReactContext;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$0:Lcom/braze/reactbridge/BannerContainer;

    iget-object v1, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/internal/Ref$DoubleRef;

    iget v2, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Lcom/braze/reactbridge/BrazeBannerManagerImpl$$ExternalSyntheticLambda1;->f$3:Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, v1, v2, v3}, Lcom/braze/reactbridge/BrazeBannerManagerImpl;->$r8$lambda$e19dYLpK6Gyd0Dv3_7CXJybi-Y8(Lcom/braze/reactbridge/BannerContainer;Lkotlin/jvm/internal/Ref$DoubleRef;ILcom/facebook/react/bridge/ReactContext;)V

    return-void
.end method
