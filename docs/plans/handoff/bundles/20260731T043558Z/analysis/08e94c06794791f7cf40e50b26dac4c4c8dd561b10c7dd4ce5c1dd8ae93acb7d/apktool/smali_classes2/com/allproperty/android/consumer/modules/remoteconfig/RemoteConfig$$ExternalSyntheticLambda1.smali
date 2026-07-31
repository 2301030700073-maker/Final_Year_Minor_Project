.class public final synthetic Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda1;->f$0:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    iput-object p2, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda1;->f$0:Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;

    iget-object v1, p0, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1, p1}, Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;->$r8$lambda$3xO7v627oVXLJy-j0N484VXoMDI(Lcom/allproperty/android/consumer/modules/remoteconfig/RemoteConfig;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
