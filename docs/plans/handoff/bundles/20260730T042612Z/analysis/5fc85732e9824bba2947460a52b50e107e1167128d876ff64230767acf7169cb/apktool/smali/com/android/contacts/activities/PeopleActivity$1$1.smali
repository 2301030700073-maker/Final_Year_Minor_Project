.class Lcom/android/contacts/activities/PeopleActivity$1$1;
.super Ljava/lang/Object;
.source "PeopleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/PeopleActivity$1;->onStatusChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/activities/PeopleActivity$1;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$1$1;->this$1:Lcom/android/contacts/activities/PeopleActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/contacts/activities/PeopleActivity$1$1;->this$1:Lcom/android/contacts/activities/PeopleActivity$1;

    iget-object v0, v0, Lcom/android/contacts/activities/PeopleActivity$1;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v0}, Lcom/android/contacts/activities/PeopleActivity;->access$000(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method
