.class public final synthetic Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl$$ExternalSyntheticLambda4;->f$1:Z

    iput p3, p0, Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl$$ExternalSyntheticLambda4;->f$0:Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl$$ExternalSyntheticLambda4;->f$1:Z

    iget v2, p0, Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/reactnativekeyboardcontroller/modules/statusbar/StatusBarManagerCompatModuleImpl;->$r8$lambda$5HTl2y-E7DSsVSEa_f5sUMBHcx0(Landroid/app/Activity;ZI)V

    return-void
.end method
