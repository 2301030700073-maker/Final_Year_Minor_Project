.class public final synthetic Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function6;


# instance fields
.field public final synthetic f$0:Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver$$ExternalSyntheticLambda2;->f$0:Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver$$ExternalSyntheticLambda2;->f$0:Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver;

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, p3

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v6, p4

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    move-object/from16 v8, p5

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    move-object/from16 v10, p6

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static/range {v1 .. v11}, Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver;->$r8$lambda$hO6Qdu-YPoGcH4DvDr16HQaEJOY(Lcom/reactnativekeyboardcontroller/listeners/FocusedInputObserver;IIDDDD)Lkotlin/Unit;

    move-result-object v1

    return-object v1
.end method
