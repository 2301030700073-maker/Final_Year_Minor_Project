.class public final synthetic Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:D

.field public final synthetic f$1:D

.field public final synthetic f$2:D

.field public final synthetic f$3:D

.field public final synthetic f$4:D


# direct methods
.method public synthetic constructor <init>(DDDDD)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$0:D

    iput-wide p3, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$1:D

    iput-wide p5, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$2:D

    iput-wide p7, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$3:D

    iput-wide p9, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$4:D

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 0
    iget-wide v0, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$0:D

    iget-wide v2, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$1:D

    iget-wide v4, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$2:D

    iget-wide v6, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$3:D

    iget-wide v8, p0, Lcom/braze/reactbridge/BrazeReactBridgeImpl$$ExternalSyntheticLambda23;->f$4:D

    move-object v10, p1

    check-cast v10, Lcom/braze/BrazeUser;

    invoke-static/range {v0 .. v10}, Lcom/braze/reactbridge/BrazeReactBridgeImpl;->$r8$lambda$WxGNBE3lopysJOyDNRyZ7sBlaRs(DDDDDLcom/braze/BrazeUser;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
