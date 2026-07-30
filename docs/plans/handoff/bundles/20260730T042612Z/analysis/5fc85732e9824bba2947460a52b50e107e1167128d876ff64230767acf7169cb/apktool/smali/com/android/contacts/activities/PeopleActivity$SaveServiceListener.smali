.class Lcom/android/contacts/activities/PeopleActivity$SaveServiceListener;
.super Landroid/content/BroadcastReceiver;
.source "PeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/activities/PeopleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/PeopleActivity;


# direct methods
.method private constructor <init>(Lcom/android/contacts/activities/PeopleActivity;)V
    .locals 0

    .line 935
    iput-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$SaveServiceListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/activities/PeopleActivity;Lcom/android/contacts/activities/PeopleActivity$1;)V
    .locals 0

    .line 935
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/PeopleActivity$SaveServiceListener;-><init>(Lcom/android/contacts/activities/PeopleActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 938
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x4796549a

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "groupDeleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 940
    :cond_2
    iget-object p1, p0, Lcom/android/contacts/activities/PeopleActivity$SaveServiceListener;->this$0:Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {p1, p2}, Lcom/android/contacts/activities/PeopleActivity;->access$700(Lcom/android/contacts/activities/PeopleActivity;Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
